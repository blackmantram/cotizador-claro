package com.pixo.cotizadorclaro.view.component
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.MouseEvent;
	
	public class SelectableButton extends EventDispatcher
	{
		public static const SELECTED:String = "SELECTED";
		
		private var selected:Sprite;
		
		protected var skin:Sprite;
		
		public function SelectableButton(skin:Sprite)
		{
			this.skin = skin;
			skin.addEventListener(MouseEvent.CLICK, handleButtonClicked);
			skin.buttonMode = true;
			selected = skin.getChildByName("selected") as Sprite;
			selected.visible = false;
		}
		
		private function handleButtonClicked(e:MouseEvent):void
		{
			dispatchEvent(new Event(SelectableButton.SELECTED));
		}
		
		public function select():void
		{
			selected.visible = true;
		}
		
		public function unselect():void
		{
			selected.visible = false;
		}
		
		public function toggle():void
		{
			selected.visible = !selected.visible;
		}
	}
}