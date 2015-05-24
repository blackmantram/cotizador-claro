package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.SelectableButton;
	
	import flash.display.Sprite;
	import flash.events.Event;

	public class TriplePlayView extends Slider
	{
		private var _skin:Sprite;
		
		private var selectButton:SelectableButton;
		
		public function TriplePlayView()
		{
			selectButton = new SelectableButton(_skin.getChildByName("selectButton") as Sprite);
			selectButton.addEventListener(SelectableButton.SELECTED, onSelected);
		}
		
		private function onSelected(e:Event):void
		{
			selectButton.toggle();
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.TriplePlaye() as Sprite;
			return _skin;
		}
	}
}