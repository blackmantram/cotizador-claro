package com.pixo.cotizadorclaro.model
{
	import org.robotlegs.mvcs.Actor;
	
	public class Config extends Actor
	{
		public static const TV_BASICA:String = "TV_BASICA";
		public static const TV_BASICA_PREMIUM:String = "TV_BASICA_PREMIUM";
		public static const TV_AVANZADA:String = "TV_AVANZADA";
		
		public static const INTERNET_20:String = "INTERNET_20";
		public static const INTERNET_10:String = "INTERNET_10";
		public static const INTERNET_5:String = "INTERNET_5";
		public static const INTERNET_3:String = "INTERNET_3";
		
		public static const PHONE_1:String = "PHONE_1";
		public static const PHONE_2:String = "PHONE_2";
		public static const PHONE_3:String = "PHONE_3";
		public static const PHONE_4:String = "PHONE_4";
		
		public var tv:Boolean = false;
		public var internet:Boolean = false;
		public var phone:Boolean = false;
		public var tvplan:String = "";
		public var decoPVR:Number = 0;
		public var decoHD:Number = 0;
		public var decoStandard:Number = 0;
		public var hbo:Boolean = false;
		public var miniHbo:Boolean = false;
		public var fox:Boolean = false;
		public var hotPack:Boolean = false;
		public var revista15:Boolean = false;
		public var internetplan:String = "";
		public var phonelines:String = "";
		
		public function get isTriplePlaySelected():Boolean
		{
			return tv && internet && phone;
		}
		
		public function get hasNothingSelected():Boolean
		{
			return !tv && !internet && !phone;
		}
		
		public function get hasDecosSelected():Boolean
		{
			return decoPVR + decoHD + decoStandard > 0;
		}
	}
}