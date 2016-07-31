package common;
import haxe.Http;
import haxe.Json;
import js.Browser;

/**
 * ...
 * @author watanabe
 */
class Config
{

	private var _http:Http;
	private var _callback:Void->Void;
	
	public static var host:String;
	public static var canvasOffsetY:Float = 0;
	
	public function new() 
	{
		
	}

	public function load(callback:Void->Void):Void {
		
		_callback = callback;
		_http = new Http("../../config.json");
		_http.onData = _onData;
		_http.request();
	}
	
	private function _onData(str:String):Void {
		
		var data:Dynamic = Json.parse(str);
		host = data.host;
		//Browser.window.alert("" + host);
		
		//host
		var win:Dynamic = Browser.window;
		win.host = host;	
		canvasOffsetY = data.canvasOffsetY;
	
		if ( _callback != null ) {
			_callback();
		}
		
	}
	
}