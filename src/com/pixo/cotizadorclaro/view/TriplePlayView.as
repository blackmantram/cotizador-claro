package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	
	import flash.display.Sprite;
	import flash.events.Event;

	public class TriplePlayView extends Slider
	{
		private var _skin:Sprite;
		
		public var selectButton:SelectableButton;
		
		public function TriplePlayView()
		{
			selectButton = new SelectableButton(_skin.getChildByName("selectButton") as Sprite);
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.TriplePlay() as Sprite;
			return _skin;
		}
	}
}