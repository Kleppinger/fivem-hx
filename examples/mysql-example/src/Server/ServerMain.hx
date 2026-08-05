import fivem.server.Natives as Server;
import fivem.shared.CoreEvents;

class ServerMain {

    static function main() {
        CoreEvents.addEventHandler("onResourceStart", function(resourceName:String) {
            if (resourceName == "mysql-example") {
                trace('[fivem-hx] Server started for mysql-example');
                PlayerDataModel.ensureSchema();

                var playerData = PlayerDataModel.loadOrCreate("steam:110000100000000", "Example Player");
                playerData.money += 100;
                playerData.lastSeen = Date.now();
                playerData.save();

                trace('Loaded player data: ${playerData.name} / ${playerData.money}');
            }        
    
        });
    }

}