package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.TvPlanSelector;
	
	import flash.display.Sprite;
	
	public class TvView extends Slider
	{
		[Skinnable]
		public var channels:Sprite;
		
		private var planSelector:TvPlanSelector;
		
		private var _skin:Sprite;
		
		public function TvView()
		{
			planSelector = new TvPlanSelector(skin);
			channels.visible = false;
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Tv() as Sprite;
			return _skin;
		}
	}
}