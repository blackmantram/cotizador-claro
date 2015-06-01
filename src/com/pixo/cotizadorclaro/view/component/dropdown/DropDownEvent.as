package com.pixo.cotizadorclaro.view.component.dropdown
{
	import flash.events.Event;
	
	public class DropDownEvent extends Event
	{
		public static const ITEM_SELECTED:String = "DropDownEvent.ITEM_SELECTED";
		
		public var item:DropDownItem;
		
		public function DropDownEvent(type:String, item:DropDownItem, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.item = item;	
			super(type, bubbles, cancelable);
		}
	}
}