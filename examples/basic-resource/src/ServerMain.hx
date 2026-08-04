import fivem.server.Natives as Server;
import fivem.shared.CoreEvents;

class ServerMain {
	static function main() {
		CoreEvents.registerCommand("greet", (source, args, raw) -> {
			var name = Server.cfx.getPlayerName(Std.string(source));
			trace('[fivem-hx] greeting $name (source $source)');
			CoreEvents.triggerClientEvent("fivemhx:example:ping", source, 'Hello, $name!');
		}, false);
	}
}
