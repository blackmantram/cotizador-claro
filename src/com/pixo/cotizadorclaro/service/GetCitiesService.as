package com.pixo.cotizadorclaro.service
{
	import com.pixo.cotizadorclaro.controller.commands.boostrap.DropDownItemData;
	import com.pixo.cotizadorclaro.service.event.GetCitiesEvent;
	
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import org.robotlegs.mvcs.Actor;
	
	import skyboy.serialization.JSON;

	public class GetCitiesService extends Actor implements IGetCitiesService
	{
		private const jsonFile:String = "assets/data/cities.json";
		
		private var loader:URLLoader;
		
		public function loadCities():void
		{
			loader = new URLLoader(new URLRequest(jsonFile));
			addLoaderListeners();
		}
		
		private function handleIOError(event:IOErrorEvent):void
		{
			trace(event.text);
			removeLoaderListeners();
		}
		
		private function handleLoadComplete(event:Event):void
		{
			var citiesArray:Array = skyboy.serialization.JSON.decode(loader.data) as Array;
			var cities:Vector.<DropDownItemData> = new Vector.<DropDownItemData>();
			for each(var cityObject:Object in citiesArray)
			{
				var city:DropDownItemData = new DropDownItemData();
				city.id = cityObject["id"];
				city.name = cityObject["ciudad"];
				cities.push(city);
			}
			this.dispatch(new GetCitiesEvent(GetCitiesEvent.CITIES_LOADED, cities));
			removeLoaderListeners();
		}
		
		private function addLoaderListeners():void
		{
			loader.addEventListener(IOErrorEvent.IO_ERROR, handleIOError);
			loader.addEventListener(Event.COMPLETE, handleLoadComplete);
		}
		
		private function removeLoaderListeners():void
		{
			loader.removeEventListener(IOErrorEvent.IO_ERROR, handleIOError);
			loader.removeEventListener(Event.COMPLETE, handleLoadComplete);
		}
	}
}