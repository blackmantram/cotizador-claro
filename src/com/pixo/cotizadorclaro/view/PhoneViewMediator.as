package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class PhoneViewMediator extends Mediator
	{
		[Inject]
		public var view:PhoneView;
		
		[Inject]
		public var config:Config;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(view.prevButton, MouseEvent.CLICK, handlePrevButton);
			eventMap.mapListener(view.lineSelector, Event.SELECT, handleLineSelected);
			view.lineSelector.select(config.phonelines);
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			if (config.phonelines > 0)
			dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.PREV));
		}
		
		private function handleLineSelected(e:Event):void
		{
			config.phonelines = view.lineSelector.selected.name as Number;
		}
	}
}