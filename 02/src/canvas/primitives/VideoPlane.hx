package canvas.primitives;
import js.Browser;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.Element;
import js.html.VideoElement;
import sound.MyAudio;
import three.Mesh;
import three.MeshBasicMaterial;
import three.PlaneBufferGeometry;
import three.Texture;
import three.Vector3;

/**
 * ...
 * @author watanabe
 */
class VideoPlane extends PrimitiveBase
{

	public static inline var W:Int = 192;
	public static inline var H:Int = 58;
	
	private var _canvas:CanvasElement;
	private var _texture:Texture;
	private var _material:MeshBasicMaterial;
	private var _plane:Mesh;
	private var _context:CanvasRenderingContext2D;
	private var _video:VideoElement;
	
	public function new() 
	{
		super();
	}
	
	override public function init(o:Dynamic):Void {
		super.init(o);
		
		if(_video==null){
			_video = cast Browser.document.getElementById("walker");
			_video.loop = true;
			
			_canvas = Browser.document.createCanvasElement();
			_canvas.width = W;
			_canvas.height = H;
			_context = _canvas.getContext2d();
			
			_texture = new Texture(_canvas);
			_material = new MeshBasicMaterial( { map:_texture } );
			_material.side = Three.DoubleSide;
			
			var s:Float = 3.5;
			_plane = new Mesh(untyped new PlaneBufferGeometry(W*s, H*s, 1, 1), _material);
			add(_plane);
		}
	}
	
	
	override public function start():Void {
	
		if (_video != null) {
			_video.play();
			_video.loop = true;
		}
		
	}
	
	
	override public function update(a:MyAudio,rotV:Vector3):Void {
		
		_context.drawImage(_video,0,0);
		_texture.needsUpdate = true;
		//this.rotation.y += rotV.y * 0.5 + 0.01;
		//super.update(a, rotV);
		
	}		
	
	override public function stop() 
	{
		if (_video != null) {
			_video.pause();
		}
	}
	
	
}