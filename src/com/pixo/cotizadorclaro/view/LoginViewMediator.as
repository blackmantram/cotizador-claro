package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class LoginViewMediator extends Mediator
	{
		[Inject]
		public var view:LoginView;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.loginButton, MouseEvent.CLICK, handleLogin);
		}
		
		private function handleLogin(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.NEXT));
		}
	}
}