package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	import com.pixo.cotizadorclaro.view.base.Slider;
	
	import flash.display.Sprite;
	
	public class TvView extends Slider
	{
		private var _skin:Sprite;
		
		public function TvView()
		{
			
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Tv() as Sprite;
			return _skin;
		}
	}
}