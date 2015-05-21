package
{
	import com.pixo.cotizadorclaro.AppContext;
	import com.pixo.cotizadorclaro.AppView;
	
	import flash.display.Sprite;
	
	[SWF(width="1024", height="768", backgroundColor="#FFFFFF")]
	public class Main extends Sprite
	{
		private var context:AppContext;
		private var contextView:Sprite;
		
		public function Main()
		{
			contextView = new AppView();
			addChild(contextView);
			context = new AppContext(contextView);
		}
	}
}