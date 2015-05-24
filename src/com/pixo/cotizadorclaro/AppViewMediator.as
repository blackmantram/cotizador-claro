package com.pixo.cotizadorclaro
{
	import com.pixo.cotizadorclaro.controller.events.AppEvent;
	
	import flash.profiler.showRedrawRegions;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class AppViewMediator extends Mediator
	{
		[Inject]
		public var view:AppView;
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_CITY, handleLoginSuccessful);
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_STRATUM, handleCitySelected);
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_TRIPLE_PLAY, handleTriplePlaySelected);
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_SERVICES, handleServicesSelected);
		}
		
		private function handleLoginSuccessful(e:AppEvent):void
		{
			view.showCity();
		}
		
		private function handleCitySelected(e:AppEvent):void
		{
			view.showStratum();
		}
		
		private function handleTriplePlaySelected(e:AppEvent):void
		{
			view.showTriplePlay();
		}
		
		private function handleServicesSelected(e:AppEvent):void
		{
			view.showServices();
		}
	}
}