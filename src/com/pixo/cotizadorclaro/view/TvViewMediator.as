package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class TvViewMediator extends Mediator
	{
		[Inject]
		public var view:TvView;
		
		[Inject]
		public var config:Config;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(view.prevButton, MouseEvent.CLICK, handlePrevButton);
			eventMap.mapListener(view.planSelector, Event.SELECT, handlePlanSelected);
			view.planSelector.stratum = config.stratum;
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			if (config.tvplan != "")
				dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.PREV));
		}
		
		private function handlePlanSelected(e:Event):void
		{
			config.tvplan = view.planSelector.selected.name;
		}
	}
}