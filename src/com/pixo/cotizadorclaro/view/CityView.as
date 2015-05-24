package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	
	import flash.display.Sprite;

	public class CityView extends Slider
	{
		public function CityView()
		{
			prevButton.mouseEnabled = false;
		}
		
		protected override function get skin():Sprite
		{
			return new AppSkins.CitySkin() as Sprite;
		}
	}
}