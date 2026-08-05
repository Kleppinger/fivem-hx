import fivem.server.db.OxMysql;

class PlayerDataModel {
    public var id:Int = 0;
    public var identifier:String;
    public var name:String = "";
    public var money:Int = 0;
    public var lastSeen:Date;
    public var createdAt:Date;

    public function new(?identifier:String) {
        this.identifier = identifier != null ? identifier : "";
        this.lastSeen = Date.now();
        this.createdAt = Date.now();
    }

    public static function ensureSchema():Void {
        var sql:String = "CREATE TABLE IF NOT EXISTS `player_data` ("
            + "`id` INT NOT NULL AUTO_INCREMENT,"
            + "`identifier` VARCHAR(100) NOT NULL,"
            + "`name` VARCHAR(100) NOT NULL DEFAULT '',"
            + "`money` INT NOT NULL DEFAULT 0,"
            + "`last_seen` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,"
            + "`created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,"
            + "PRIMARY KEY (`id`),"
            + "UNIQUE KEY `uniq_identifier` (`identifier`)"
            + ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;";
        OxMysql.rawExecute(sql);
    }

    public static function load(identifier:String):PlayerDataModel {
        var rows:Array<Dynamic> = OxMysql.query("SELECT * FROM `player_data` WHERE `identifier` = ? LIMIT 1", [identifier]);
        if (rows.length == 0) {
            return new PlayerDataModel(identifier);
        }

        var row:Dynamic = rows[0];
        var data = new PlayerDataModel(identifier);
        data.id = readInt(row, "id");
        data.name = readString(row, "name");
        data.money = readInt(row, "money");
        data.lastSeen = readDate(row, "last_seen");
        data.createdAt = readDate(row, "created_at");
        return data;
    }

    public static function loadOrCreate(identifier:String, name:String):PlayerDataModel {
        var data = load(identifier);
        if (data.id == 0) {
            data.name = name;
            data.save();
        }
        return data;
    }

    public function save():Void {
        if (id == 0) {
            var insertId:Int = OxMysql.insert(
                "INSERT INTO `player_data` (`identifier`, `name`, `money`, `last_seen`, `created_at`) VALUES (?, ?, ?, ?, ?)",
                [identifier, name, money, formatDate(lastSeen), formatDate(createdAt)]
            );
            id = insertId;
        } else {
            OxMysql.update(
                "UPDATE `player_data` SET `name` = ?, `money` = ?, `last_seen` = ? WHERE `id` = ?",
                [name, money, formatDate(lastSeen), id]
            );
        }
    }

    static function readString(row:Dynamic, field:String):String {
        var value = Reflect.field(row, field);
        return value == null ? "" : Std.string(value);
    }

    static function readInt(row:Dynamic, field:String):Int {
        var value = Reflect.field(row, field);
        if (value == null) return 0;
        var parsed = Std.parseInt(Std.string(value));
        return parsed == null ? 0 : parsed;
    }

    static function readDate(row:Dynamic, field:String):Date {
        var value = Reflect.field(row, field);
        if (value == null) return Date.now();

        var text = Std.string(value);
        if (text == "") return Date.now();

        try {
            return Date.fromString(text);
        } catch (_:Dynamic) {
            return Date.now();
        }
    }

    static function formatDate(value:Date):String {
        return value.toString();
    }
}
