package com.pixo.cotizadorclaro.service.event
{
	import com.pixo.cotizadorclaro.service.CostResults;
	
	import flash.events.Event;
	
	public class GetTriplePlayEvent extends Event
	{
		public static const PLAN_LOADED:String = "GetTriplePlayEvent.PLAN_LOADED";
		
		public var triplePlay:CostResults;
		
		/**
		 *	@constructor
		 */
		public function GetTriplePlayEvent(type:String, triplePlay:CostResults, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.triplePlay = triplePlay;
			super(type, bubbles, cancelable);
		}
		
		override public function clone() : Event 
		{
			return new GetTriplePlayEvent(type, triplePlay, bubbles, cancelable);
		}
	}
}