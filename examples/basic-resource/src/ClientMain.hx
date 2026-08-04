import fivem.client.Natives as Client;
import fivem.shared.Natives as Shared;
import fivem.shared.CoreEvents;

class ClientMain {
	static function main() {
		CoreEvents.registerCommand("hello", (source, args, raw) -> {
			var ped = Client.player.playerPedId();
			var coords = Client.entity.getEntityCoords(ped, true);
			trace('[fivem-hx] hello from resource "${Shared.cfx.getCurrentResourceName()}", ped=$ped, coords=$coords');
		}, false);

		CoreEvents.registerNetEvent("fivemhx:example:ping");
		CoreEvents.addEventHandler("fivemhx:example:ping", (message:String) -> {
			trace('[fivem-hx] server says: $message');
		});
	}
}
