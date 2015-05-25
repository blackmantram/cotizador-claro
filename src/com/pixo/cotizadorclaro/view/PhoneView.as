package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.PhoneLineSelector;
	
	import flash.display.Sprite;
	
	public class PhoneView extends Slider
	{
		private var _skin:Sprite;
		
		private var lineSelector:PhoneLineSelector;
		
		public function PhoneView()
		{
			lineSelector = new PhoneLineSelector(skin);
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Phone() as Sprite;
			return _skin;
		}
	}
}