package com.pixo.cotizadorclaro.service
{
	public class CostResults
	{
		public var tvCost:Number = 0;
		public var internetCost:Number = 0;
		public var phoneCost:Number = 0;
		public var baseCost:Number = 0;
		public var promoPrice:Number = 0;
		public var additionals:Object = new Object();
		public var included:Object = new Object();
		
		public function get additionalCosts():Number{
			var additionalCost:Number = 0;
			for (var key:String in additionals)
			{
				additionalCost += Number(additionals[key]["val"]);
			}
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
		
		public function has(search:String):Boolean
		{
			for (var key:String in additionals)
			{
				if (key.indexOf(search)==0 && Number(additionals[key]["count"]) > 0)
					return true;
			}
			for (key in included)
			{
				if (key.indexOf(search)==0 && Number(included[key]) > 0)
					return true;
			}
			return false;
		}
		
		public function countOf(search:String):Number
		{
			var count:Number = 0;
			for (var key:String in additionals)
			{
				if (key.indexOf(search)==0)
					count += Number(additionals[key]["count"]);
			}
			for (key in included)
			{
				if (key.indexOf(search)==0)
					count += Number(included[key]);
			}
			return count;
		}
	}
}