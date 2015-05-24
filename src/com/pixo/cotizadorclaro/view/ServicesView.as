package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.SelectableButton;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class ServicesView extends Slider
	{
		private var tvButton:SelectableButton;
		
		private var internetButton:SelectableButton;
		
		private var phoneButton:SelectableButton;
		
		private var _skin:Sprite;
		
		public function ServicesView()
		{
			tvButton = new SelectableButton(_skin.getChildByName("tvButton") as Sprite);
			tvButton.addEventListener(SelectableButton.SELECTED, onTVSelected);
			internetButton = new SelectableButton(_skin.getChildByName("internetButton") as Sprite);
			internetButton.addEventListener(SelectableButton.SELECTED, onInternetSelected);
			phoneButton = new SelectableButton(_skin.getChildByName("phoneButton") as Sprite);
			phoneButton.addEventListener(SelectableButton.SELECTED, onPhoneSelected);
		}
		
		private function onTVSelected(e:Event):void
		{
			tvButton.toggle();
		}
		
		private function onInternetSelected(e:Event):void
		{
			internetButton.toggle();
		}
		
		private function onPhoneSelected(e:Event):void
		{
			phoneButton.toggle();
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Services() as Sprite;
			return _skin;
		}
	}
}