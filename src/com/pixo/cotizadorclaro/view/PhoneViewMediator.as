package com.pixo.cotizadorclaro.view
{
	import org.robotlegs.mvcs.Mediator;
	
	public class PhoneViewMediator extends Mediator
	{
		[Inject]
		public var view:PhoneView;
		
		override public function onRegister():void
		{
			
		}
	}
}