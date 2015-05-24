package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.StratumSelector;
	
	import flash.display.Sprite;

	public class StratumView extends Slider
	{
		private var _skin:Sprite;
		
		private var stratumSelector:StratumSelector;
		
		
		public function StratumView()
		{
			stratumSelector = new StratumSelector(_skin);
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.StratumSkin() as Sprite;
			return _skin;
		}
	}
}