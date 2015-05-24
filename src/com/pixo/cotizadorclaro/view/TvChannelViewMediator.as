package com.pixo.cotizadorclaro.view
{
	import org.robotlegs.mvcs.Mediator;
	
	public class TvChannelViewMediator extends Mediator
	{
		[Inject]
		public var view:TvChannelView;
		
		override public function onRegister():void
		{
			
		}
	}
}