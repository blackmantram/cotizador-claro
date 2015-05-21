package com.pixo.cotizadorclaro.controller.events
{
	import flash.events.Event;
	
	public class AppEvent extends Event
	{
		public static const APP_STARTED:String = "AppEvent.appStarted";
		
		/**
		 *	@constructor
		 */
		public function AppEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone() : Event 
		{
			return new AppEvent(type, bubbles, cancelable);
		}
	}
}