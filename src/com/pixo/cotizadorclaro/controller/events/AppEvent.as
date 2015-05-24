package com.pixo.cotizadorclaro.controller.events
{
	import flash.events.Event;
	
	public class AppEvent extends Event
	{
		public static const APP_STARTED:String = "AppEvent.APP_STARTED";
		public static const GO_TO_CITY:String = "AppEvent.LOGIN_SUCCESSFUL";
		public static const GO_TO_STRATUM:String = "AppEvent.CITY_SELECTED";
		public static const GO_TO_TRIPLE_PLAY:String = "AppEvent.GO_TO_TRIPLE_PLAY";
		public static const GO_TO_SERVICES:String = "AppEvent.GO_TO_SERVICES";
		public static const GO_TO_TV:String = "AppEvent.GO_TO_TV";
		public static const GO_TO_TV_DECO:String = "AppEvent.GO_TO_TV_DECO";
		public static const GO_TO_TV_CHANNEL:String = "AppEvent.GO_TO_TV_CHANNEL";
		public static const GO_TO_INTERNET:String = "AppEvent.GO_TO_INTERNET";
		public static const GO_TO_PHONE:String = "AppEvent.GO_TO_PHONE";
		
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