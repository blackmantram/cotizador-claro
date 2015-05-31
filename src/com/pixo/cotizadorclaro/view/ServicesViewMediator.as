package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.ConfigEvent;
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ServicesViewMediator extends Mediator
	{
		[Inject]
		public var view:ServicesView;
		
		[Inject]
		public var config:Config;
		
		override public function onRegister():void
		{
			updateStates();
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(view.prevButton, MouseEvent.CLICK, handlePrevButton);
			eventMap.mapListener(view.tvButton, SelectableButton.SELECTED, handleTvSelected);
			eventMap.mapListener(view.internetButton, SelectableButton.SELECTED, handleInternetSelected);
			eventMap.mapListener(view.phoneButton, SelectableButton.SELECTED, handlePhoneSelected);	
		}
		
		private function updateStates():void
		{
			view.setTVState(config.tv);
			view.setInternetState(config.internet);
			view.setPhoneState(config.phone);
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			if (!config.hasNothingSelected)
				dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.PREV));
		}
		
		private function handleTvSelected(e:Event):void
		{
			dispatch(new ConfigEvent(ConfigEvent.TV));
			updateStates();
		}
		
		private function handleInternetSelected(e:Event):void
		{
			dispatch(new ConfigEvent(ConfigEvent.INTERNET));
			updateStates();
		}
		
		private function handlePhoneSelected(e:Event):void
		{
			dispatch(new ConfigEvent(ConfigEvent.PHONE));
			updateStates();
		}
	}
}