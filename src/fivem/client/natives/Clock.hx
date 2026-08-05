package fivem.client.natives;

@:native("_G")
extern class Clock {
	/**
	 * 
	 */
	@:native("AdvanceClockTimeTo")
	static function advanceClockTimeTo(hour:Int, minute:Int, second:Int):Dynamic;

	/**
	 * 
	 */
	@:native("AddToClockTime")
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
	@:native("GetClockDayOfWeek")
	static function getClockDayOfWeek():Int;

	/**
	 * ```
	 * Gets the current ingame hour, expressed without zeros. (09:34 will be represented as 9)  
	 * ```
	 */
	@:native("GetClockHours")
	static function getClockHours():Int;

	/**
	 * 
	 */
	@:native("GetClockDayOfMonth")
	static function getClockDayOfMonth():Int;

	/**
	 * ```
	 * Gets the current ingame clock minute.  
	 * ```
	 */
	@:native("GetClockMinutes")
	static function getClockMinutes():Int;

	/**
	 * 
	 */
	@:native("GetClockMonth")
	static function getClockMonth():Int;

	/**
	 * 
	 */
	@:native("GetClockYear")
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
	@:native("GetPosixTime")
	static function getPosixTime(year:Dynamic, month:Dynamic, day:Dynamic, hour:Dynamic, minute:Dynamic, second:Dynamic):Dynamic;

	/**
	 * ```
	 * Gets the current ingame clock second. Note that ingame clock seconds change really fast since a day in GTA is only 48 minutes in real life.  
	 * ```
	 */
	@:native("GetClockSeconds")
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
	@:native("GetLocalTime")
	static function getLocalTime(year:Dynamic, month:Dynamic, day:Dynamic, hour:Dynamic, minute:Dynamic, second:Dynamic):Dynamic;

	/**
	 * Returns how many real ms are equal to one game minute.
	 * A getter for [`SetMillisecondsPerGameMinute`](#\_0x36CA2554).
	 */
	@:native("GetMillisecondsPerGameMinute")
	static function getMillisecondsPerGameMinute():Int;

	/**
	 * 
	 */
	@:native("PauseClock")
	static function pauseClock(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Gets current UTC time
	 * ```
	 */
	@:native("GetUtcTime")
	static function getUtcTime(year:Dynamic, month:Dynamic, day:Dynamic, hour:Dynamic, minute:Dynamic, second:Dynamic):Dynamic;

	/**
	 * ```
	 * SET_CLOCK_TIME(12, 34, 56);  
	 * ```
	 */
	@:native("SetClockTime")
	static function setClockTime(hour:Int, minute:Int, second:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetClockDate")
	static function setClockDate(day:Int, month:Int, year:Int):Dynamic;

}
