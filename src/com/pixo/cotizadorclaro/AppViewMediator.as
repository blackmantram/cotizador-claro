package com.pixo.cotizadorclaro
{
	import org.robotlegs.mvcs.Mediator;
	
	public class AppViewMediator extends Mediator
	{
		[Inject]
		public var view:AppView;
		
		public function AppViewMediator()
		{
			super();
		}
	}
}