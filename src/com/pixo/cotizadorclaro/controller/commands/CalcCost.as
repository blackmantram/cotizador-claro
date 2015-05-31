package com.pixo.cotizadorclaro.controller.commands
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.service.ICalcCostService;
	
	import org.robotlegs.mvcs.Command;
	
	public class CalcCost extends Command
	{
		[Inject]
		public var calcCostService:ICalcCostService;
		
		[Inject]
		public var config:Config;
		
		override public function execute():void
		{
			calcCostService.getCost(config);
		}
	}
}