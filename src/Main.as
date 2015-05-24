package
{
	import com.pixo.cotizadorclaro.AppContext;
	import com.pixo.cotizadorclaro.AppView;
	
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.utils.getDefinitionByName;
	
	import org.osmf.elements.SWFLoader;
	
	[SWF(width="1024", height="768", backgroundColor="#FFFFFF")]
	public class Main extends Sprite
	{
		private var loader:Loader;
		
		public function Main()
		{
			var contextView:Sprite = new Sprite();
			addChild(contextView);
			var context:AppContext = new AppContext(contextView);
			contextView.addChild(new AppView());
			
		}
	}
}