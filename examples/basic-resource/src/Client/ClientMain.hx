import fivem.client.Natives as Client;
import fivem.shared.CoreEvents;

class ClientMain {

    static function main() {
        trace('[fivem-hx] Client started');

        CoreEvents.addEventHandler("onClientResourceStart", function(resourceName:String) {
            if (resourceName == "hx-resource") {
                trace('[fivem-hx] Client resource ready');
                CoreEvents.triggerServerEvent("hx_resource:server_ping", "Hello from client");
            }
        });

        CoreEvents.registerNetEvent("hx_resource:client_pong");
        CoreEvents.addEventHandler("hx_resource:client_pong", function(message:String) {
            trace('Client received: $message');
        });
    }
}