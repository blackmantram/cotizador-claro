package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.view.component.NumberButton;
	import com.pixo.cotizadorclaro.view.component.NumberSelector;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class TvDecoViewMediator extends Mediator
	{
		[Inject]
		public var view:TvDecoView;
		
		[Inject]
		public var config:Config;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(view.prevButton, MouseEvent.CLICK, handlePrevButton);
			eventMap.mapListener(view.pvr, Event.SELECT, handleDecosSelected);
			eventMap.mapListener(view.hd, Event.SELECT, handleDecosSelected);
			eventMap.mapListener(view.standard, Event.SELECT, handleDecosSelected);
			view.standard.select(config.decoStandard);
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			if (config.hasDecosSelected)
				dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.PREV));
		}
		
		private function handleDecosSelected(e:Event):void
		{
			if(view.pvr.selected != null) config.decoPVR = (view.pvr.selected as NumberButton).position;
			if(view.hd.selected != null) config.decoHD = (view.hd.selected as NumberButton).position;
			if(view.standard.selected != null) config.decoStandard = (view.standard.selected as NumberButton).position;
		}
	}
}