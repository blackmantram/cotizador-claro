package com.pixo.cotizadorclaro.service
{
	public class CostResults
	{
		public var tvCost:Number = 0;
		public var internetCost:Number = 0;
		public var phoneCost:Number = 0;
		public var baseCost:Number = 0;
		public var promoPrice:Number = 0;
		public var additionals:Vector.<AdditionalCost> = new Vector.<AdditionalCost>();
		
		public function get additionalCosts():Number{
			var additionalCost:Number = 0;
			for each(var cost:AdditionalCost in additionals)
				additionalCost += cost.value;
			return additionalCost;
		}
		
		public function get packetPrice():Number{
			return tvCost + internetCost + phoneCost;
		}
		
		public function get totalPrice():Number{
			return packetPrice + additionalCosts;
		}
		
		public function get monthlySaving():Number {
			return totalPrice - promoPrice;
		}
		
		public function get yearlySaving():Number {
			return monthlySaving * 12;
		}
		
		public function get additionalsPrice():Number {
			return 0;
		}
	}
}