package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.NumberSelector;
	
	import flash.display.Sprite;

	public class StratumView extends Slider
	{
		private var _skin:Sprite;
		
		private var stratumSelector:NumberSelector;
		
		
		public function StratumView()
		{
			stratumSelector = new NumberSelector(_skin, 6);
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.StratumSkin() as Sprite;
			return _skin;
		}
	}
}