package fivem.client.natives;

@:native("_G")
extern class Clock {
	/**
	 * 
	 */
	@:native("ADVANCE_CLOCK_TIME_TO")
	static function advanceClockTimeTo(hour:Int, minute:Int, second:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ADD_TO_CLOCK_TIME")
	static function addToClockTime(hours:Int, minutes:Int, seconds:Int):Dynamic;

	/**
	 * ```
	 * Gets the current day of the week.  
	 * 0: Sunday  
	 * 1: Monday  
	 * 2: Tuesday  
	 * 3: Wednesday  
	 * 4: Thursday  
	 * 5: Friday  
	 * 6: Saturday  
	 * ```
	 */
	@:native("GET_CLOCK_DAY_OF_WEEK")
	static function getClockDayOfWeek():Int;

	/**
	 * ```
	 * Gets the current ingame hour, expressed without zeros. (09:34 will be represented as 9)  
	 * ```
	 */
	@:native("GET_CLOCK_HOURS")
	static function getClockHours():Int;

	/**
	 * 
	 */
	@:native("GET_CLOCK_DAY_OF_MONTH")
	static function getClockDayOfMonth():Int;

	/**
	 * ```
	 * Gets the current ingame clock minute.  
	 * ```
	 */
	@:native("GET_CLOCK_MINUTES")
	static function getClockMinutes():Int;

	/**
	 * 
	 */
	@:native("GET_CLOCK_MONTH")
	static function getClockMonth():Int;

	/**
	 * 
	 */
	@:native("GET_CLOCK_YEAR")
	static function getClockYear():Int;

	/**
	 * ```
	 * Gets system time as year, month, day, hour, minute and second.  
	 * Example usage:  
	 * 	int year;  
	 * 	int month;  
	 * 	int day;  
	 * 	int hour;  
	 * 	int minute;  
	 * 	int second;  
	 * 	TIME::GET_POSIX_TIME(&year, &month, &day, &hour, &minute, &second);  
	 * ```
	 */
	@:native("GET_POSIX_TIME")
	static function getPosixTime(year:Dynamic, month:Dynamic, day:Dynamic, hour:Dynamic, minute:Dynamic, second:Dynamic):Dynamic;

	/**
	 * ```
	 * Gets the current ingame clock second. Note that ingame clock seconds change really fast since a day in GTA is only 48 minutes in real life.  
	 * ```
	 */
	@:native("GET_CLOCK_SECONDS")
	static function getClockSeconds():Int;

	/**
	 * ```
	 * Gets local system time as year, month, day, hour, minute and second.  
	 * Example usage:  
	 * int year;  
	 * int month;  
	 * int day;  
	 * int hour;  
	 * int minute;  
	 * int second;  
	 * or use std::tm struct  
	 * TIME::GET_LOCAL_TIME(&year, &month, &day, &hour, &minute, &second);  
	 * ```
	 */
	@:native("GET_LOCAL_TIME")
	static function getLocalTime(year:Dynamic, month:Dynamic, day:Dynamic, hour:Dynamic, minute:Dynamic, second:Dynamic):Dynamic;

	/**
	 * Returns how many real ms are equal to one game minute.
	 * A getter for [`SetMillisecondsPerGameMinute`](#\_0x36CA2554).
	 */
	@:native("GET_MILLISECONDS_PER_GAME_MINUTE")
	static function getMillisecondsPerGameMinute():Int;

	/**
	 * 
	 */
	@:native("PAUSE_CLOCK")
	static function pauseClock(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Gets current UTC time
	 * ```
	 */
	@:native("GET_UTC_TIME")
	static function getUtcTime(year:Dynamic, month:Dynamic, day:Dynamic, hour:Dynamic, minute:Dynamic, second:Dynamic):Dynamic;

	/**
	 * ```
	 * SET_CLOCK_TIME(12, 34, 56);  
	 * ```
	 */
	@:native("SET_CLOCK_TIME")
	static function setClockTime(hour:Int, minute:Int, second:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CLOCK_DATE")
	static function setClockDate(day:Int, month:Int, year:Int):Dynamic;

}
