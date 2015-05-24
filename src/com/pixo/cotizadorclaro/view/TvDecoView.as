package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	
	import flash.display.Sprite;
	
	public class TvDecoView extends Slider
	{
		private var _skin:Sprite;
		
		public function TvView()
		{
			
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Tv_Deco() as Sprite;
			return _skin;
		}
	}
}