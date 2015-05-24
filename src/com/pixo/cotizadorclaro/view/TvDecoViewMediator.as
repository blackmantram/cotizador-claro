package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.AppEvent;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class TvDecoViewMediator extends Mediator
	{
		[Inject]
		public var view:TvDecoView;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(view.prevButton, MouseEvent.CLICK, handlePrevButton);
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			dispatch(new AppEvent(AppEvent.GO_TO_TV_CHANNEL));
		}
		
		private function handlePrevButton(e:MouseEvent):void
		{
			dispatch(new AppEvent(AppEvent.GO_TO_TV));
		}
	}
}