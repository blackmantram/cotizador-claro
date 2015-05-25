package com.pixo.cotizadorclaro.model
{
	import com.pixo.cotizadorclaro.controller.events.AppEvent;
	
	import flash.events.Event;
	import flash.utils.describeType;
	
	import org.robotlegs.mvcs.Actor;
	
	public class Navigation extends Actor
	{
		private var orderedNavEvents:Vector.<String>;
		
		private var prevNav:Number = 0;
		private var currentNav:Number = 0;
		
		private var currentNavString:String = "";
		
		[Inject]
		public var selectedItems:Config;
		
		[PostConstruct]
		public function init():void{
			orderedNavEvents = new <String>[
				AppEvent.GO_TO_LOGIN,
				AppEvent.GO_TO_CITY,
				AppEvent.GO_TO_STRATUM,
				AppEvent.GO_TO_TRIPLE_PLAY,
				AppEvent.GO_TO_SERVICES,
				AppEvent.GO_TO_TV,
				AppEvent.GO_TO_TV_DECO,
				AppEvent.GO_TO_TV_CHANNEL,
				AppEvent.GO_TO_INTERNET,
				AppEvent.GO_TO_PHONE,
				AppEvent.GO_TO_PREVIEW,
				AppEvent.GO_TO_REGISTRY
			];
		}
		
		public function get nextEvent():Event
		{
			calcNextEvent();
			return new AppEvent(currentNavString);
		}
		
		public function get prevEvent():Event
		{
			calcPrevEvent();
			return new AppEvent(currentNavString);
		}
		
		private function calcNextEvent():void
		{
			prevNav = currentNav;
			CalcNextConfigSection();
			CalcNextNav();
			currentNavString = orderedNavEvents[currentNav];
		}
		
		private function calcPrevEvent():void
		{
			prevNav = currentNav;
			CalcPrevConfigSection();
			CalcPrevNav();
			currentNavString = orderedNavEvents[currentNav];
		}
		
		private function CalcNextConfigSection():void
		{
			if (isIn(AppEvent.GO_TO_TRIPLE_PLAY))
			{
				if(selectedItems.isTriplePlaySelected)
					currentNav=GetNavPositionOf(AppEvent.GO_TO_TV);
				else
					currentNav=GetNavPositionOf(AppEvent.GO_TO_SERVICES);
			}
			else if (isIn(AppEvent.GO_TO_SERVICES))
			{
				if (selectedItems.tv)
					currentNav=GetNavPositionOf(AppEvent.GO_TO_TV);
				else if (selectedItems.internet)
					currentNav=GetNavPositionOf(AppEvent.GO_TO_INTERNET);
				else if (selectedItems.phone)
					currentNav=GetNavPositionOf(AppEvent.GO_TO_PHONE);
				else
					throw new Error("has no items selected");
			}
			else if (isIn(AppEvent.GO_TO_TV_CHANNEL))
			{
				if (selectedItems.internet)
					currentNav=GetNavPositionOf(AppEvent.GO_TO_INTERNET);
				else if (selectedItems.phone)
					currentNav=GetNavPositionOf(AppEvent.GO_TO_PHONE);
			}
			else if (isIn(AppEvent.GO_TO_INTERNET))
			{
				if (selectedItems.phone)
					currentNav=GetNavPositionOf(AppEvent.GO_TO_PHONE);
				else
					currentNav=GetNavPositionOf(AppEvent.GO_TO_PREVIEW);
			}
			else if (isIn(AppEvent.GO_TO_PHONE))
				currentNav=GetNavPositionOf(AppEvent.GO_TO_PREVIEW);
		}
		
		private function CalcNextNav():void 
		{
			if (prevNav == currentNav)
				if (currentNav < orderedNavEvents.length)
					currentNav++;	
		}
		
		private function CalcPrevConfigSection():void
		{
			if (isIn(AppEvent.GO_TO_INTERNET))
			{
				if (selectedItems.tv)
					currentNav=GetNavPositionOf(AppEvent.GO_TO_TV_CHANNEL);
				else
					currentNav=GetNavPositionOf(AppEvent.GO_TO_SERVICES);
			}
			else if (isIn(AppEvent.GO_TO_PHONE))
			{
				if (selectedItems.internet)
					currentNav=GetNavPositionOf(AppEvent.GO_TO_INTERNET);
				else if (selectedItems.tv)
					currentNav=GetNavPositionOf(AppEvent.GO_TO_TV_CHANNEL);
				else
					currentNav=GetNavPositionOf(AppEvent.GO_TO_SERVICES);
			}
		}
		
		private function CalcPrevNav():void 
		{
			if (prevNav == currentNav)
				if (currentNav > 1)
					currentNav--;
		}
		
		private function isIn(nav:String):Boolean
		{
			return currentNavString==nav;
		}
		
		private function GetNavPositionOf(nav:String):Number
		{
			for(var i:Number=0; i<orderedNavEvents.length; i++)
				if (orderedNavEvents[i] == nav)
					return i;
			throw new Error("couldn't find nav "+nav);
		}
	}
}