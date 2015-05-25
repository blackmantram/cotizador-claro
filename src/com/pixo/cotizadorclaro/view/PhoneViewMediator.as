package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class PhoneViewMediator extends Mediator
	{
		[Inject]
		public var view:PhoneView;
		
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