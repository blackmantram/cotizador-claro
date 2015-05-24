package com.pixo.cotizadorclaro.view
{
	import org.robotlegs.mvcs.Mediator;
	
	public class InternetViewMediator extends Mediator
	{
		[Inject]
		public var view:InternetView;
		
		override public function onRegister():void
		{
			
		}
	}
}