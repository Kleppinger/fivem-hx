package fivem.shared;

/**
	Hand-written externs for natives that exist in *both* the client and server
	apisets but which FiveM's native database tags per-environment, so they
	land in `fivem.client.natives.*` and `fivem.server.natives.*` separately
	and never in `fivem.shared.natives.*`.

	Code under `fivem.shared` can't reach either env-specific copy without
	breaking the one-classpath split, so the handful that shared code genuinely
	needs are re-declared here. Like `CoreEvents` and `Citizen`, this file is
	hand-written and kept out of `natives/` so regeneration never touches it.

	The `@:native` names are the natives' original `SCREAMING_SNAKE_CASE`
	spelling, matching every generated extern in this library — not the
	CamelCase aliases the Lua runtime also exposes. Keeping one convention
	means a native's compiled call target looks the same wherever it came
	from. `print` is the exception: it is a real Lua global, not a native.
**/
@:native("_G")
extern class Runtime {
	/**
		Milliseconds since the game (client) or server process started.

		The only clock that is meaningful in both environments — use it for
		timeouts, cooldowns and rate limits rather than wall-clock time.
	**/
	@:native("GET_GAME_TIMER")
	static function getGameTimer():Int;

	/**
		The Jenkins one-at-a-time hash of `value`, lowercased first.

		This is how models, weapons, vehicles and most other game assets are
		identified: `getHashKey("adder")` is what `CREATE_VEHICLE` wants.
	**/
	@:native("GET_HASH_KEY")
	static function getHashKey(value:String):Int;

	/** Writes a line to the server console or the client's F8 console. **/
	@:native("print")
	static function print(message:Dynamic):Void;
}
