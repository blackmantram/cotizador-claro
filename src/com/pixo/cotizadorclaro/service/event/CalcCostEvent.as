package com.pixo.cotizadorclaro.service.event
{
	import com.pixo.cotizadorclaro.service.CostResults;
	
	import flash.events.Event;

	public class CalcCostEvent extends Event
	{
		public static const CALC_LOADED:String = "CalcCostEvent.CALC_LOADED";
		
		public var costResults:CostResults;
		
		/**
		 *	@constructor
		 */
		public function CalcCostEvent(type:String, costResults:CostResults, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.costResults = costResults;
			super(type, bubbles, cancelable);
		}
		
		override public function clone() : Event 
		{
			return new CalcCostEvent(type, costResults, bubbles, cancelable);
		}
	}
}