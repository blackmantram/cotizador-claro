package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.dropdown.DropDown;
	
	import flash.display.Sprite;

	public class CityView extends Slider
	{
		private var _skin:Sprite;
		
		public var citySelector:DropDown;
		
		public function CityView()
		{
			prevButton.mouseEnabled = false;
			citySelector = new DropDown(_skin.getChildByName("citySelector") as Sprite);
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.CitySkin() as Sprite;
			return _skin;
		}
	}
}