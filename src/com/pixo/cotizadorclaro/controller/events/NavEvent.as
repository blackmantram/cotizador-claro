package com.pixo.cotizadorclaro.controller.events
{
	import flash.events.Event;

	public class NavEvent extends Event
	{
		public static const NEXT:String = "NavEvent.NEXT";
		public static const PREV:String = "NavEvent.PREV";
		public static const JUMP:String = "NavEvent.JUMP";
		
		public var to:String = "";
		
		/**
		 *	@constructor
		 */
		public function NavEvent(type:String, to:String="", bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.to = to;
			super(type, bubbles, cancelable);
		}
		
		override public function clone() : Event 
		{
			return new NavEvent(type, to, bubbles, cancelable);
		}
	}
}