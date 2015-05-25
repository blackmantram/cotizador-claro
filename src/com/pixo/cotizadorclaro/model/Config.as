package com.pixo.cotizadorclaro.model
{
	import org.robotlegs.mvcs.Actor;
	
	public class Config extends Actor
	{
		public var tv:Boolean = false;
		public var internet:Boolean = false;
		public var phone:Boolean = false;
		
		public function get isTriplePlaySelected():Boolean
		{
			return tv && internet && phone;
		}
		
		public function get hasNothingSelected():Boolean
		{
			return !tv && !internet && !phone;
		}
	}
}