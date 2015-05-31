package com.pixo.cotizadorclaro.service
{
	public class CostResults
	{
		public var tvCost:Number = 0;
		public var internetCost:Number = 0;
		public var phoneCost:Number = 0;
		public var baseCost:Number = 0;
		public var promoPrice:Number = 0;
		
		public function get rawPrice():Number{
			return tvCost + internetCost + phoneCost;
		}
		
		public function get monthlySaving():Number {
			return rawPrice - promoPrice;
		}
		
		public function get yearlySaving():Number {
			return monthlySaving * 12;
		}
		
		public function get additionalsPrice():Number {
			return 0;
		}
	}
}