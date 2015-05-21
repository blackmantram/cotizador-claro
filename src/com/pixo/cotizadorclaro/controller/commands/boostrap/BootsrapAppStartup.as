package com.pixo.cotizadorclaro.controller.commands.boostrap
{
	import com.pixo.cotizadorclaro.controller.events.AppEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootsrapAppStartup extends Command
	{
		override public function execute():void
		{
			commandMap.mapEvent(AppEvent.APP_STARTED, BootstrapModels, AppEvent, true);
			commandMap.mapEvent(AppEvent.APP_STARTED, BootstrapCommands, AppEvent, true);
			commandMap.mapEvent(AppEvent.APP_STARTED, BootstrapServices, AppEvent, true);
			commandMap.mapEvent(AppEvent.APP_STARTED, BootstrapViewMediators, AppEvent, true);
		}
	}
}