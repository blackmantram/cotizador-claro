package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class TvChannelViewMediator extends Mediator
	{
		[Inject]
		public var view:TvChannelView;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(view.prevButton, MouseEvent.CLICK, handlePrevButton);
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.PREV));
		}
	}
}