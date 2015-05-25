package com.pixo.cotizadorclaro.model
{
	public class TvAdditionalCalculator
	{
		private var config:Config;
		
		private var hdCost:Number = 5000;
		private var pvrCost:Number = 4000;
		private var standardCost:Number = 3000;
		
		private var hbo:Number = 20000;
		private var miniHbo:Number = 12000;
		private var fox:Number = 15000;
		private var hotPack:Number = 30000;
		private var r15:Number = 7000;
		
		public function TvAdditionalCalculator(config:Config)
		{
			this.config = config;	
		}
		
		public function get cost():Number
		{
			var decosCost:Number = config.decoHD * hdCost + config.decoPVR * pvrCost + config.decoStandard * standardCost;
			var hboCost:Number = config.hbo ? hbo: 0;
			var miniHboCost:Number = config.hbo ? miniHbo: 0;
			var foxCost:Number = config.hbo ? fox: 0;
			var hotPackCost:Number = config.hbo ? hotPack: 0;
			var r15Cost:Number = config.hbo ? r15: 0;
			return decosCost+hboCost+miniHboCost+foxCost+hotPackCost+r15Cost;
		}
	}
}