package dede.cuts;
import sound.MyAudio;
import typo.StrokeUtil;

/**
 * ...
 * @author watanabe
 */
class DeDeCutOneLine  extends DeDeCutBase
{

	
	
	public function new() 
	{
		super();
	}
	
	override public function start():Void {
				
		_lines.visible = true;
		
		//mongon wo kimeru
		_lines.setGeoMax(300,[false,true,false]);
		//_lines.setSpeedX( DeDeLine.SPEEDX0 );
		
		_vrdg.visible = false;
		_vrdg.setGeoMax(1);
		
		_cam.setZoom(2);
		
		var data:DeDeParam = DeDeParam.getParam();
		data.txt = "DEDEMOUSE KTSNJDESIGN ";
		data.font = StrokeUtil.FUTURA;
		data.speedX = DeDeLine.SPEEDX0;
		data.spaceX = 20;
		data.startX = DeDeLine.WIDTH / 2;
		
		//data.isRandomLine = true;
		
		_lines.changeType( data );

	}
	
	/**
	 * next
	 */
	override public function next():Void
	{
		//set dot type
		//_lines.next();
		var type:Int = Math.floor( 6 * Math.random() );
		var isRotate:Bool = Math.random() < 0.5 ? true : false;
		_lines.setDotType( type, isRotate );
		
		
	}	
	
	
	/**
	 * update
	 * @param	audio
	 */
	override public function update(audio:MyAudio):Void {
		
		//_lines.up
		_counter++;
		if ( audio.subFreqByteData[5] > 10 && _counter > 15 ) {
			_counter = 0;
			var addVal:Float = 1 / 30;
			_lines.countUp( addVal );// Math.random());
		}
		
		_lines.update(audio);
		
	}		
	
	
	
}