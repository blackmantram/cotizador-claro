package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	import com.pixo.cotizadorclaro.view.base.Slider;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class ServicesView extends Slider
	{
		public var tvButton:SelectableButton;
		
		public var internetButton:SelectableButton;
		
		public var phoneButton:SelectableButton;
		
		private var _skin:Sprite;
		
		public function ServicesView()
		{
			tvButton = new SelectableButton(_skin.getChildByName("tvButton") as Sprite);
			internetButton = new SelectableButton(_skin.getChildByName("internetButton") as Sprite);
			phoneButton = new SelectableButton(_skin.getChildByName("phoneButton") as Sprite);
		}
		
		public function setTVState(selected:Boolean):void
		{
			tvButton.unselect();
			if (selected)
				tvButton.select ();
		}
		
		public function setInternetState(selected:Boolean):void
		{
			internetButton.unselect();
			if (selected)
				internetButton.select ();
		}
		
		public function setPhoneState(selected:Boolean):void
		{
			phoneButton.unselect();
			if (selected)
				phoneButton.select ();
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Services() as Sprite;
			return _skin;
		}
	}
}