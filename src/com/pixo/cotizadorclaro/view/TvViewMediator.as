package com.pixo.cotizadorclaro.view
{
	import org.robotlegs.mvcs.Mediator;
	
	public class TvViewMediator extends Mediator
	{
		[Inject]
		public var view:TvView;
		
		override public function onRegister():void
		{
			
		}
	}
}