package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class InternetViewMediator extends Mediator
	{
		[Inject]
		public var view:InternetView;
		
		[Inject]
		public var config:Config;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(view.prevButton, MouseEvent.CLICK, handlePrevButton);
			eventMap.mapListener(view.bandSelector, Event.SELECT, handleBandSelected);
			view.bandSelector.stratum = config.stratum;
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			if (config.internetplan != "")
			dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.PREV));
		}
		
		private function handleBandSelected(e:Event):void
		{
			config.internetplan = view.bandSelector.selected.name;
		}
	}
}