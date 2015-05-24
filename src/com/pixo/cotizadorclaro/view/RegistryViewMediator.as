package com.pixo.cotizadorclaro.view
{
	import com.pixo.cotizadorclaro.controller.events.AppEvent;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class RegistryViewMediator extends Mediator
	{
		[Inject]
		public var view:RegistryView;
		
		override public function onRegister():void
		{
		}
	}
}