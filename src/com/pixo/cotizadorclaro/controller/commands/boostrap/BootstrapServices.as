package com.pixo.cotizadorclaro.controller.commands.boostrap
{
	import com.pixo.cotizadorclaro.service.CalcCostService;
	import com.pixo.cotizadorclaro.service.ICalcCostService;
	
	import org.robotlegs.mvcs.Command;

	public class BootstrapServices extends Command
	{
		override public function execute():void
		{
			injector.mapSingletonOf(ICalcCostService, CalcCostService);
		}
	}
}