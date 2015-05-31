package com.pixo.cotizadorclaro.service
{
	import com.pixo.cotizadorclaro.model.Config;

	public interface ICalcCostService
	{
		function getCost(config:Config):void;
	}
}