package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.ConfigEvent;
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.service.event.GetTriplePlayEvent;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class TriplePlayViewMediator extends Mediator
	{
		[Inject]
		public var view:TriplePlayView;
		
		[Inject]
		public var config:Config;
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, GetTriplePlayEvent.PLAN_LOADED, handleTriplePlayObtained);
		}
		
		private function handleTriplePlayObtained(e:GetTriplePlayEvent):void
		{
			config.triplePlayCost = e.triplePlay;
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(view.prevButton, MouseEvent.CLICK, handlePrevButton);
			eventMap.mapListener(view.selectButton, SelectableButton.SELECTED, handleSelected);
			eventMap.mapListener(view, Event.ADDED_TO_STAGE, handleViewAddedTostage);
		}
		
		private function handleViewAddedTostage(e:Event):void
		{
			updateStates();
		}
		
		private function updateStates():void
		{
			if (config.isTriplePlaySelected)
				view.selectButton.select();
			else
				view.selectButton.unselect();
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.PREV));
		}
		
		private function handleSelected(e:Event):void
		{
			dispatch(new ConfigEvent(ConfigEvent.TRIPLE_PLAY));
			updateStates();
		}
	}
}