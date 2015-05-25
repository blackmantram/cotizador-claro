package com.pixo.cotizadorclaro.controller.commands.boostrap
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.model.Navigation;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapModels extends Command
	{
		override public function execute():void
		{
			injector.mapSingleton(Config);
			injector.mapSingleton(Navigation);
		}
	}

}