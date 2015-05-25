package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	
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
			eventMap.mapListener(view.hbo, MouseEvent.CLICK, handleHBOSelected);
			eventMap.mapListener(view.minihbo, MouseEvent.CLICK, handleMiniHBOSelected);
			eventMap.mapListener(view.fox, MouseEvent.CLICK, handleFoxSelected);
			eventMap.mapListener(view.hotPack, MouseEvent.CLICK, handleHotPackSelected);
			eventMap.mapListener(view.revista15, MouseEvent.CLICK, handleRevista15Selected);
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.PREV));
		}
		
		private function handleHBOSelected(e:MouseEvent):void
		{
			config.hbo = !config.hbo;
		}
		
		private function handleMiniHBOSelected(e:MouseEvent):void
		{
			config.miniHbo = !config.miniHbo;
		}
		
		private function handleFoxSelected(e:MouseEvent):void
		{
			config.fox = !config.fox;
		}
		
		private function handleHotPackSelected(e:MouseEvent):void
		{
			config.hotPack = !config.hotPack;
		}
		
		private function handleRevista15Selected(e:MouseEvent):void
		{
			config.revista15 = !config.revista15;
		}
	}
}