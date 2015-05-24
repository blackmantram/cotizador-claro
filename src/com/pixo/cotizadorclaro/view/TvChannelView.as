package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	
	import flash.display.Sprite;
	
	public class TvChannelView extends Slider
	{
		[Skinnable]
		public var channels:Sprite;
		
		private var _skin:Sprite;
		
		public function TvChannelView()
		{
			channels.visible = false;
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Tv_Channel() as Sprite;
			return _skin;
		}
	}
}