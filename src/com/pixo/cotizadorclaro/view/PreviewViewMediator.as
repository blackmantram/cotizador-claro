package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.AppEvent;
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class PreviewViewMediator extends Mediator
	{
		[Inject]
		public var view:PreviewView;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.registry, MouseEvent.CLICK, handleRegistryButton);
			eventMap.mapListener(view.tv, MouseEvent.CLICK, handleTvButton);
			eventMap.mapListener(view.internet, MouseEvent.CLICK, handleInternetButton);
			eventMap.mapListener(view.phone, MouseEvent.CLICK, handlePhoneButton);
		}
		
		private function handleRegistryButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handleTvButton(e:MouseEvent):void
		{
			dispatch(new AppEvent(AppEvent.GO_TO_TV));
		}
		
		private function handleInternetButton(e:MouseEvent):void
		{
			dispatch(new AppEvent(AppEvent.GO_TO_INTERNET));
		}
		
		private function handlePhoneButton(e:MouseEvent):void
		{
			dispatch(new AppEvent(AppEvent.GO_TO_PHONE));
		}
	}
}