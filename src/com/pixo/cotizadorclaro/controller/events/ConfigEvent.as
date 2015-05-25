package com.pixo.cotizadorclaro.controller.events
{
	import flash.events.Event;
	
	public class ConfigEvent extends Event
	{
		public static const TV:String = "ConfigEvent.TV";
		public static const INTERNET:String = "ConfigEvent.INTERNET";
		public static const PHONE:String = "ConfigEvent.PHONE";
		public static const TRIPLE_PLAY:String = "ConfigEvent.TRIPLE_PLAY";
		
		/**
		 *	@constructor
		 */
		public function ConfigEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone() : Event 
		{
			return new ConfigEvent(type, bubbles, cancelable);
		}
	}
}