package com.pixo.cotizadorclaro.model
{
	import flash.utils.Dictionary;
	
	import org.osmf.events.ContainerChangeEvent;

	public class CostCalculator
	{
		private var config:Config;
		private var tvCosts:Dictionary;
		private var internetCosts:Dictionary;
		private var phoneCosts:Dictionary;
		private var tvAdditionalCalculator:TvAdditionalCalculator;
		
		public function CostCalculator(config:Config)
		{
			this.config = config;
			initTvCosts();
			initInternetCosts();
			initPhoneCosts();
			tvAdditionalCalculator = new TvAdditionalCalculator(config);
		}
		
		private function initTvCosts():void {
			tvCosts = new Dictionary();
			tvCosts[Config.TV_BASICA]=30000;
			tvCosts[Config.TV_BASICA_PREMIUM]=50000;
			tvCosts[Config.TV_AVANZADA]=70000;
		}
		
		private function initInternetCosts():void {
			internetCosts = new Dictionary();
			internetCosts[Config.INTERNET_3]=25000;
			internetCosts[Config.INTERNET_5]=50000;
			internetCosts[Config.INTERNET_10]=82000;
			internetCosts[Config.INTERNET_20]=95000;
		}
		
		private function initPhoneCosts():void {
			phoneCosts = new Dictionary();
			phoneCosts[Config.PHONE_1]=30000;
			phoneCosts[Config.PHONE_2]=35000;
			phoneCosts[Config.PHONE_3]=40000;
			phoneCosts[Config.PHONE_4]=45000;
		}
		
		public function get tvTotal():Number
		{
			if (config.tv)
				return tvCosts[config.tvplan] + tvAdditionalCalculator.cost;
			return 0;
		}
		
		public function get internetTotal():Number
		{
			if (config.internet)
				return internetCosts[config.internetplan];
			return 0;
		}
		
		public function get phoneTotal():Number
		{
			if (config.phone)
				return phoneCosts[config.phonelines];
			return 0;
		}
		
		public function get grandTotal():Number
		{
			return tvTotal + internetTotal + phoneTotal;
		}
	}
}