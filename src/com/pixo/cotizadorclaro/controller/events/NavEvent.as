package com.pixo.cotizadorclaro.controller.events
{
	import flash.events.Event;

	public class NavEvent extends Event
	{
		public static const NEXT:String = "NavEvent.NEXT";
		public static const PREV:String = "NavEvent.PREV";
		
		/**
		 *	@constructor
		 */
		public function NavEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone() : Event 
		{
			return new NavEvent(type, bubbles, cancelable);
		}
	}
}