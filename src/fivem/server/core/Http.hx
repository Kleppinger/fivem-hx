package fivem.server.core;

import fivem.shared.core.Deferred;

/**
	The outcome of an HTTP request.
**/
typedef HttpResponse = {
	var status:Int;
	var body:String;

	/** Response headers, as a raw Lua table keyed by header name. **/
	var headers:Dynamic;
}

/**
	Outbound HTTP from the server — webhooks, external APIs, licence checks.

	```haxe
	var response = Http.post(webhookUrl, haxe.Json.stringify({content: "server started"}), ["Content-Type" => "application/json"]);
	if (response.status >= 300) Logger.warn("webhook", response.body);
	```

	The blocking methods suspend only the calling coroutine, so the rest of the
	server keeps running. Even so, a slow endpoint delays whatever triggered
	the call — don't put a synchronous request inside a player-facing path
	without a timeout on the far end.

	`PerformHttpRequest` is a Lua-level global rather than a native (the native
	underneath takes a serialised blob), so this goes through a small Lua glue
	function, the same approach as `fivem.server.db.OxMysqlBridge`.
**/
class Http {
	static function __init__():Void {
		untyped __lua__("
function __hx_http_request(url, method, data, headers, cb)
	_G.PerformHttpRequest(url, cb, method, data, headers)
end
");
	}

	/** Performs a GET and blocks until the response arrives. **/
	public static inline function get(url:String, ?headers:Map<String, String>):HttpResponse {
		return request(url, "GET", null, headers);
	}

	/** Performs a POST and blocks until the response arrives. **/
	public static inline function post(url:String, body:String, ?headers:Map<String, String>):HttpResponse {
		return request(url, "POST", body, headers);
	}

	/**
		Performs a request and blocks until it completes.

		A network-level failure surfaces as a status of -1 with an empty body,
		matching what the runtime reports; it does not throw.
	**/
	public static function request(url:String, method:String = "GET", ?body:String, ?headers:Map<String, String>):HttpResponse {
		var deferred = new Deferred<HttpResponse>();
		send(url, method, body, headers, response -> deferred.resolve(response));

		var result = deferred.await();
		return result != null ? result : {status: -1, body: "", headers: null};
	}

	/**
		Performs a request without blocking, delivering the result to
		`onResponse`.

		Use this for fire-and-forget webhooks, where nothing should wait on a
		Discord round trip.
	**/
	public static function send(url:String, method:String = "GET", ?body:String, ?headers:Map<String, String>,
			?onResponse:(response:HttpResponse) -> Void):Void {
		var headerTable = headers == null ? null : lua.Table.fromMap(headers);

		untyped __lua__("__hx_http_request({0}, {1}, {2}, {3}, {4})", url, method, body == null ? "" : body, headerTable,
			function(status:Int, responseBody:String, responseHeaders:Dynamic) {
				if (onResponse != null) onResponse({status: status, body: responseBody, headers: responseHeaders});
			});
	}
}
