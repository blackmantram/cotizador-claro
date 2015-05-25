package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.BandSelector;
	
	import flash.display.Sprite;
	
	public class InternetView extends Slider
	{
		private var _skin:Sprite;
		
		private var bandSelector:BandSelector;
		
		public function InternetView()
		{
			bandSelector = new BandSelector(skin);
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Internet() as Sprite;
			return _skin;
		}
	}
}