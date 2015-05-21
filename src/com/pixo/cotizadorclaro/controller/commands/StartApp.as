package com.pixo.cotizadorclaro.controller.commands
{
	import com.pixo.cotizadorclaro.controller.events.AppEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class StartApp extends Command
	{
		override public function execute():void 
		{
			var evt:AppEvent = new AppEvent(AppEvent.APP_STARTED);
			dispatch(evt);
		} 
	}
}