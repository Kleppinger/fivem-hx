import fivem.server.Natives as Server;
import fivem.shared.CoreEvents;

class ServerMain {

    static function main() {
        CoreEvents.addEventHandler("onResourceStart", function(resourceName:String) {
            if (resourceName == "hx-resource") {
                trace('[fivem-hx] Server started for hx-resource');
            }
        });

        CoreEvents.registerNetEvent("hx_resource:server_ping");
        CoreEvents.addEventHandler("hx_resource:server_ping", function(source:Int, message:String) {
            trace('Server received: $message from $source');
            CoreEvents.triggerClientEvent("hx_resource:client_pong", source, 'Pong from server to $source');
        });
    }

}