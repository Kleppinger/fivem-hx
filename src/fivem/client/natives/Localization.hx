package fivem.client.natives;

@:native("_G")
extern class Localization {
	/**
	 * ```
	 * 0 = american (en-US)
	 * 1 = french (fr-FR)
	 * 2 = german (de-DE)
	 * 3 = italian (it-IT)
	 * 4 = spanish (es-ES)
	 * 5 = brazilian (pt-BR)
	 * 6 = polish (pl-PL)
	 * 7 = russian (ru-RU)
	 * 8 = korean (ko-KR)
	 * 9 = chinesetrad (zh-TW)
	 * 10 = japanese (ja-JP)
	 * 11 = mexican (es-MX)
	 * 12 = chinesesimp (zh-CN)
	 * ```
	 */
	@:native("GET_CURRENT_LANGUAGE")
	static function getCurrentLanguage():Int;

	/**
	 * ```
	 * Possible return values: 0, 1, 2
	 * ```
	 */
	@:native("_LOCALIZATION_GET_SYSTEM_DATE_FORMAT")
	static function LocalizationGetSystemDateFormat():Int;

	/**
	 * ```
	 * Same return values as GET_CURRENT_LANGUAGE
	 * ```
	 */
	@:native("_LOCALIZATION_GET_SYSTEM_LANGUAGE")
	static function LocalizationGetSystemLanguage():Int;

}
