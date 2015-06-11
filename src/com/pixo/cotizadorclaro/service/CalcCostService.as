package com.pixo.cotizadorclaro.service
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.service.event.CalcCostEvent;
	
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import org.robotlegs.mvcs.Actor;
	
	import skyboy.serialization.JSON;
	
	public class CalcCostService extends Actor implements ICalcCostService
	{
		private var loader:URLLoader;
		
		public function getCost(config:Config):void
		{
			var url:String = getURL(config);
			loader= new URLLoader(new URLRequest(url));
			loader.addEventListener(Event.COMPLETE, handleLoadComplete);
			loader.addEventListener(IOErrorEvent.IO_ERROR, handleError);
		}
		
		private function handleLoadComplete(e:Event):void
		{
			var costResults:CostResults = parseResults(loader.data);
			dispatch(new CalcCostEvent(CalcCostEvent.CALC_LOADED, costResults));
		}
		
		private function handleError(e:IOErrorEvent):void
		{
			trace(e);
		}
		
		private function getURL(config:Config):String
		{
			var url:String = "http://santandercalidad.com/claro_app/cotizador/cotizar.php?estrato=%s%&tv=%tv%&internet=%i%&voz=%p%&ciudad=%c%&adicionales=%a%";
			url = url.replace("%s%", config.stratum+"");
			url = url.replace("%tv%", config.tvplan+"");
			url = url.replace("%i%", config.internetplan+"");
			url = url.replace("%p%", config.phonelines+"");
			url = url.replace("%c%", config.city+"");
			url = url.replace("%a%", config.additionalsJSON+"");
			trace(url);
			return url;
		}
		
		private function parseResults(results:*):CostResults
		{
			var costs:Object = skyboy.serialization.JSON.decode(results) as Object;
			var costResults:CostResults = new CostResults();
			
			costResults.tvCost =  Number(costs["plan"]["precio_tv"]);
			costResults.internetCost = Number(costs["plan"]["precio_A"]);
			costResults.phoneCost = Number(costs["plan"]["precio_voz"]);
			costResults.baseCost = Number(costs["plan"]["precio_total"]);
			costResults.promoPrice = Number(costs["plan"]["tarifa_promo"]);
			
			costResults.additionals = costs["adicionales"] as Object;
			costResults.additionals = costs["adicionales"] as Object;
			
			return costResults;
		}
	}
}