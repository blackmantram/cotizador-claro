package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	
	import flash.display.Sprite;
	
	public class RegistryView extends SkinnableView
	{
		private var _skin:Sprite;
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Registry() as Sprite;
			return _skin;
		}
	}
}