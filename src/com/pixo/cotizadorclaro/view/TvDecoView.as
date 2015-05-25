package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.NumberSelector;
	
	import flash.display.Sprite;
	
	public class TvDecoView extends Slider
	{
		private var _skin:Sprite;
		
		private var pvr:NumberSelector;
		
		private var hd:NumberSelector;
		
		private var standard:NumberSelector;
		
		public function TvDecoView()
		{
			pvr = new NumberSelector(_skin.getChildByName("pvr") as Sprite, 5);
			hd = new NumberSelector(_skin.getChildByName("hd") as Sprite, 5);
			standard = new NumberSelector(_skin.getChildByName("standard") as Sprite, 5);
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Tv_Deco() as Sprite;
			return _skin;
		}
	}
}