package com.pixo.cotizadorclaro.controller.commands.boostrap
{
	import com.pixo.cotizadorclaro.service.CalcCostService;
	import com.pixo.cotizadorclaro.service.GetCitiesService;
	import com.pixo.cotizadorclaro.service.GetTriplePlayService;
	import com.pixo.cotizadorclaro.service.ICalcCostService;
	import com.pixo.cotizadorclaro.service.IGetCitiesService;
	import com.pixo.cotizadorclaro.service.IGetTriplePlayService;
	
	import org.robotlegs.mvcs.Command;

	public class BootstrapServices extends Command
	{
		override public function execute():void
		{
			injector.mapSingletonOf(ICalcCostService, CalcCostService);
			injector.mapSingletonOf(IGetCitiesService, GetCitiesService);
			injector.mapSingletonOf(IGetTriplePlayService, GetTriplePlayService);
		}
	}
}