package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.view.component.NumberButton;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;

	public class StratumViewMediator extends Mediator
	{
		[Inject]
		public var view:StratumView;
		
		[Inject]
		public var config:Config;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(view.prevButton, MouseEvent.CLICK, handlePrevButton);
			eventMap.mapListener(view.stratumSelector, Event.SELECT, handleStratumSelected);
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			if (config.stratum > 0)
				dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.PREV));
		}
		
		private function handleStratumSelected(e:Event):void
		{
			config.stratum = (view.stratumSelector.selected as NumberButton).position;
		}
	}
}