import fivem.client.Core;

/**
	Demonstrates the client-side object-oriented core: entities, the local
	player, zones, callbacks and drawing.

	Commands and keybinds registered here:

	- `/mycar` — spawns a vehicle through a server callback and gets in
	- `/whereami` — prints coordinates and the nearest vehicle
	- `E` near the demo point — an interaction prompt driven by a zone
**/
class ClientMain {
	/** The demo interaction point, outside Legion Square. **/
	static final demoPoint = new Vector3(215.9, -810.1, 30.7);

	static function main() {
		Logger.info(null, "client core demo starting");

		Resource.onStart(() -> {
			setUpZone();
			setUpCallbacks();
		});

		// Zones and blips outlive the Lua state only as long as the resource
		// does; clearing them on stop keeps a restart from stacking duplicates.
		Resource.onStop(() -> {
			Zones.clear();
			demoBlip?.remove();
		});

		Commands.register("mycar", (_, args) -> spawnCar(Commands.arg(args, 0, "adder")));
		Commands.register("whereami", (_, _) -> describeSurroundings());
	}

	static var demoBlip:Blip;
	static var canInteract = false;

	static function setUpZone():Void {
		demoBlip = Blip.atCoords(demoPoint, 52, 2, "Haxe Demo Point");
		demoBlip.shortRange = true;

		Zones.addCircle(demoPoint, 2.5, {
			// Height band rather than a sphere: the pavement here isn't level,
			// and a sphere sized to feel right would cut out at the kerb.
			onEnter: _ -> canInteract = true,
			onExit: _ -> canInteract = false,

			// Drawing has to happen every frame, so this runs on the frame
			// tick — but only while the player is actually inside.
			onInside: _ -> {
				Ui.drawMarker(demoPoint, 1, new Vector3(2.5, 2.5, 1.0), Rgba.yellow(120));
				Ui.showHelp("Press ~INPUT_CONTEXT~ to wave");
			},
			insideIntervalMs: 0
		}, 3.0);

		Controls.bind("hxdemo_interact", "Haxe demo: interact", "e", () -> {
			if (canInteract) LocalPlayer.ped().playAnim("friends@frj@ig_1", "wave_a", 49, 3000);
		});
	}

	static function setUpCallbacks():Void {
		// The server can ask this client questions too — here, where it is.
		Callbacks.register("demo:whereIsPlayer", _ -> {
			var coords = LocalPlayer.coords();
			return {x: coords.x, y: coords.y, z: coords.z};
		});
	}

	static function spawnCar(model:String):Void {
		// Vehicle creation is a server decision: a client that spawns its own
		// vehicles is a client that spawns a hundred of them.
		var netId:Int = Callbacks.await("demo:spawnVehicle", model);
		if (netId == 0) {
			Ui.notify("~r~Could not spawn that vehicle.");
			return;
		}

		// The entity exists on the server before it streams in here, so wait
		// for the network ID to resolve rather than assuming it already has.
		if (!Thread.waitUntil(() -> Entity.fromNetId(netId) != null, 5000)) {
			Ui.notify("~r~Vehicle did not stream in.");
			return;
		}

		var vehicle:Vehicle = cast Entity.fromNetId(netId);
		LocalPlayer.ped().warpIntoVehicle(vehicle, Driver);
		Ui.notify('~g~Spawned ~w~${vehicle.displayName} ~g~(${vehicle.plate})');
	}

	static function describeSurroundings():Void {
		var coords = LocalPlayer.coords();
		Logger.info("demo", 'at ${coords.toString()}, heading ${MathUtil.round(LocalPlayer.heading(), 1)}');

		var nearest = World.closestVehicle(coords, 50.0);
		Logger.info("demo", nearest == null ? "no vehicle nearby" : 'nearest: ${nearest.displayName} at ${MathUtil.round(nearest.distanceTo(coords), 1)}m');

		var hit = Raycast.fromCamera(25.0);
		Logger.info("demo", hit.hit ? 'looking at ${hit.entity == null ? "world geometry" : hit.entity.toString()}' : "looking at nothing");
	}
}
