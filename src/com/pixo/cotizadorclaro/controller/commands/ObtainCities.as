package com.pixo.cotizadorclaro.controller.commands
{
	import com.pixo.cotizadorclaro.service.IGetCitiesService;
	
	import org.robotlegs.mvcs.Command;
	
	public class ObtainCities extends Command
	{
		[Inject]
		public var getCitiesService:IGetCitiesService;
		
		override public function execute():void
		{
			getCitiesService.loadCities();
		}
	}
}