package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	
	import flash.display.Sprite;
	
	public class PhoneView extends Slider
	{
		private var _skin:Sprite;
		
		public function PhoneView()
		{
			
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Phone() as Sprite;
			return _skin;
		}
	}
}