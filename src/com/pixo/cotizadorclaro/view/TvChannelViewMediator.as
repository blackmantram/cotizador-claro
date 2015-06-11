package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class TvChannelViewMediator extends Mediator
	{
		[Inject]
		public var view:TvChannelView;
		
		[Inject]
		public var config:Config;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(view.prevButton, MouseEvent.CLICK, handlePrevButton);
			eventMap.mapListener(view.hboSelector, Event.SELECT, handleHBOSelected);
			eventMap.mapListener(view.minihboSelector, Event.SELECT, handleMiniHBOSelected);
			eventMap.mapListener(view.fox, SelectableButton.SELECTED, handleFoxSelected);
			eventMap.mapListener(view.hotPack, SelectableButton.SELECTED, handleHotPackSelected);
			eventMap.mapListener(view.revista15, SelectableButton.SELECTED, handleRevista15Selected);
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.PREV));
		}
		
		private function handleHBOSelected(e:Event):void
		{
			config.hbo = Number(view.hboSelector.selected.name);
		}
		
		private function handleMiniHBOSelected(e:Event):void
		{
			config.miniHbo = Number(view.minihboSelector.selected.name);
		}
		
		private function handleFoxSelected(e:Event):void
		{
			config.fox = !config.fox;
		}
		
		private function handleHotPackSelected(e:Event):void
		{
			config.hotPack = !config.hotPack;
		}
		
		private function handleRevista15Selected(e:Event):void
		{
			config.revista15 = !config.revista15;
		}
	}
}