package com.pixo.cotizadorclaro.service.event
{
	import com.pixo.cotizadorclaro.controller.commands.boostrap.DropDownItemData;
	
	import flash.events.Event;
	
	public class GetCitiesEvent extends Event
	{
		public static const CITIES_LOADED:String = "GetCitiesEvent.CITIES_LOADED";
		
		public var cities:Vector.<DropDownItemData>;
		
		/**
		 *	@constructor
		 */
		public function GetCitiesEvent(type:String, cities:Vector.<DropDownItemData>, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.cities = cities;
			super(type, bubbles, cancelable);
		}
		
		override public function clone() : Event 
		{
			return new GetCitiesEvent(type, cities, bubbles, cancelable);
		}
	}
}