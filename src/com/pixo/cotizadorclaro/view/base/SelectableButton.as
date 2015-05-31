package com.pixo.cotizadorclaro.view.base
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
		private var disabled:Sprite;
		
		protected var skin:Sprite;
		
		public var name:String;
		
		private var enabled:Boolean = true;
		
		public function SelectableButton(skin:Sprite, name:String="")
		{
			this.skin = skin;
			this.name = name;
			skin.addEventListener(MouseEvent.CLICK, handleButtonClicked);
			disabled = skin.getChildByName("disabled") as Sprite;
			selected = skin.getChildByName("selected") as Sprite;
			enable();
		}
		
		private function handleButtonClicked(e:MouseEvent):void
		{
			if (enabled)
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
		
		public function disable():void
		{
			selected.visible = false;
			disabled.visible = true;
			enabled = false;
		}
		
		public function enable():void
		{
			if (disabled == null)
				disabled = new Sprite();
			disabled.visible = false;
			selected.visible = false;
			enabled = true;
		}
	}
}