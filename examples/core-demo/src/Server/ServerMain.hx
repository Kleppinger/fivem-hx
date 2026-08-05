import fivem.server.Core;

/**
	Demonstrates the server-side core: the player registry, authoritative
	entity creation, callbacks and zones.

	Commands registered here:

	- `/players` — lists everyone connected (admins only)
	- `/tp <id>` — teleports the caller to another player
**/
class ServerMain {
	/** Vehicles this session created, so they can be cleaned up on stop. **/
	static final spawned:Array<Vehicle> = [];

	/** One spawn per player per 10 seconds, to stop command spam. **/
	static final spawnCooldown = new KeyedCooldown(10000);

	static final vaultPoint = new Vector3(253.5, 225.1, 101.9);

	static function main() {
		Logger.info(null, "server core demo starting");

		Players.onJoined(player -> {
			Logger.info("join", '${player.name} (${player.identifier("license")})');
			player.state.set("joinedAt", Date.now().getTime());
		});

		Players.onDropped((source, reason) -> {
			Logger.info("leave", '$source: $reason');
			spawnCooldown.forget(Std.string(source));
		});

		registerCallbacks();
		registerCommands();
		watchVault();

		// Server-created entities outlive the resource that made them, so a
		// restart without this leaves the previous run's vehicles behind.
		Resource.onStop(() -> {
			for (vehicle in spawned) vehicle.delete();
			Zones.clear();
		});
	}

	static function registerCallbacks():Void {
		Callbacks.register("demo:spawnVehicle", (source, args) -> {
			var player = Player.fromSource(source);
			// Never trust the source that arrived with the request — resolve
			// it, and treat an unknown one as a disconnected player.
			if (player == null) return 0;

			if (!spawnCooldown.tryUse(Std.string(source))) {
				player.emit("chat:addMessage", {args: ["Demo", "Slow down a moment."]});
				return 0;
			}

			var model:String = args.length > 0 ? Std.string(args[0]) : "adder";
			var ped = player.ped;
			if (ped == null) return 0;

			// The server has no GET_ENTITY_FORWARD_VECTOR, so the spawn offset
			// is derived from the ped's heading instead.
			var inFront = ped.coords + Vector3.fromHeading(ped.heading) * 3.0;

			var vehicle = Vehicle.create(model, inFront, ped.heading);
			if (vehicle == null) return 0;

			vehicle.plate = 'HX ${1000 + spawned.length}';
			vehicle.state.set("spawnedFor", player.identifier("license"));
			spawned.push(vehicle);

			return vehicle.netId;
		});
	}

	static function registerCommands():Void {
		Commands.register("players", (source, _) -> {
			for (player in Players.all()) {
				Logger.info("players", '${player.source}: ${player.name} (${player.ping}ms)');
			}
		}, "group.admin");

		Commands.register("tp", (source, args) -> {
			var caller = Player.fromSource(source);
			var target = Players.get(Commands.intArg(args, 0, -1));
			if (caller == null || target == null || target.coords == null) return;

			caller.ped.coords = target.coords;
		}, "group.admin");
	}

	static function watchVault():Void {
		Zones.addCircle(vaultPoint, 10.0, {
			onEnter: (_, player) -> Logger.warn("vault", '${player.name} entered the vault area'),
			onExit: (_, player) -> Logger.info("vault", '${player.name} left the vault area')
		}, 6.0);
	}
}
