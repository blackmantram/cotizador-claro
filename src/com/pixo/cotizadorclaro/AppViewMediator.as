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
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_TV, handleTvSelected);
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_TV_DECO, handleTvDecoSelected);
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_TV_CHANNEL, handleTvChannelSelected);
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_INTERNET, handleInternetSelected);
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_PHONE, handlePhoneSelected);
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_PREVIEW, handlePreview);
			eventMap.mapListener(eventDispatcher, AppEvent.GO_TO_REGISTRY, handleRegistry);
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
		
		private function handleTvSelected(e:AppEvent):void
		{
			view.showTv();
		}
		
		private function handleTvDecoSelected(e:AppEvent):void
		{
			view.showTvDeco();
		}
		
		private function handleTvChannelSelected(e:AppEvent):void
		{
			view.showTvChannel();
		}
		
		private function handleInternetSelected(e:AppEvent):void
		{
			view.showInternet();
		}
		
		private function handlePhoneSelected(e:AppEvent):void
		{
			view.showPhone();
		}
		
		private function handlePreview(e:AppEvent):void
		{
			view.showPreview();
		}
		
		private function handleRegistry(e:AppEvent):void
		{
			view.showRegistry();
		}
	}
}