package com.pixo.cotizadorclaro.model
{
	import com.pixo.cotizadorclaro.service.CostResults;
	
	import org.robotlegs.mvcs.Actor;
	
	public class Config extends Actor
	{
		public static const TV_BASICA:String = "Basica";
		public static const TV_BASICA_PREMIUM:String = "Premium";
		public static const TV_AVANZADA:String = "Avanzada";
		
		public static const INTERNET_20:String = "20MB";
		public static const INTERNET_10:String = "10MB";
		public static const INTERNET_5:String = "5MB";
		public static const INTERNET_3:String = "3MB";
		
		public static const PHONE_1:Number = 1;
		public static const PHONE_2:Number = 2;
		public static const PHONE_3:Number = 3;
		public static const PHONE_4:Number = 4;
		
		public static const HBO_1:Number = 1;
		public static const HBO_2:Number = 2;
		
		public static const MINIHBO_1:Number = 1;
		public static const MINIHBO_2:Number = 2;
		
		public var stratum:Number = 0;
		public var city:String = "";
		
		private var _tv:Boolean = false;
		private var _internet:Boolean = false;
		private var _phone:Boolean = false;
		
		public var tvplan:String = "";
		public var decoPVR:Number = 0;
		public var decoHD:Number = 0;
		public var decoStandard:Number = 0;
		public var hbo:Number = 0;
		public var miniHbo:Number = 0;
		public var fox:Boolean = false;
		public var hotPack:Boolean = false;
		public var revista15:Boolean = false;
		
		public var internetplan:String = "";
		
		public var phonelines:Number = 0;
		
		public var triplePlayCost:CostResults;
		
		public function get tv():Boolean
		{
			return _tv;
		}
		
		public function set tv(val:Boolean):void
		{
			_tv = val;
		}
		
		public function get internet():Boolean
		{
			return _internet;
		}
		
		public function set internet(val:Boolean):void
		{
			_internet = val;
		}
		
		public function get phone():Boolean
		{
			return _phone;
		}
		
		public function set phone(val:Boolean):void
		{
			if (val)
				phonelines = 1;
			else
				phonelines = 0;
			_phone = val;
		}
		
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
		
		public function get additionalsJSON():String
		{
			var additionalsObject:Object = {};
			if (hbo == 1) additionalsObject["hboclausula"] = 1;
			if (hbo == 2) additionalsObject["hbo"] = 1;
			if (miniHbo > 0) additionalsObject["hbomini"] = 1;
			if (fox) additionalsObject["fox"] = 1;
			if (hotPack) additionalsObject["hotpack"] = 1;
			if (revista15) additionalsObject["revista"] = 1;
			if (decoPVR>0) additionalsObject["pvr1"] = 1;
			if (decoPVR>1) additionalsObject["pvr2"] = decoPVR-1;
			if (decoHD>0) additionalsObject["hd1"] = 1;
			if (decoHD>1) additionalsObject["hd2"] = decoHD-1;
			if (decoStandard>1) additionalsObject["standard"] = decoStandard-1;
			if (phone && phonelines>0) additionalsObject["instalaciontel"] = phonelines-1;
			
			return JSON.stringify(additionalsObject);
		}
	}
}