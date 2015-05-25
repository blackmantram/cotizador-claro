package com.pixo.cotizadorclaro.view
{	
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class CityViewMediator extends Mediator
	{
		[Inject]
		public var view:CityView;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.NEXT));
		}
	}
}