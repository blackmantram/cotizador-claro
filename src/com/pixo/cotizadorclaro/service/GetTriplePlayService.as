package com.pixo.cotizadorclaro.service
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.service.event.GetTriplePlayEvent;
	
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import org.robotlegs.mvcs.Actor;
	
	import skyboy.serialization.JSON;

	public class GetTriplePlayService extends Actor implements IGetTriplePlayService
	{
		private var loader:URLLoader;
		
		public function loadPlan(config:Config):void
		{
			loader = new URLLoader(new URLRequest(getURL(config)));
			addLoaderListeners();
		}
	
		private function getURL(config:Config):String
		{
			var url:String = "http://santandercalidad.com/claro_app/cotizador/plandelmes.php?estrato=%s%&ciudad=%c%";
			url = url.replace("%s%", config.stratum+"");
			url = url.replace("%c%", config.city+"");
			trace(url);
			return url;
		}
		
		private function handleIOError(event:IOErrorEvent):void
		{
			removeLoaderListeners();
		}
		
		private function handleLoadComplete(event:Event):void
		{
			var triplePlay:CostResults = parseResults(loader.data);
			this.dispatch(new GetTriplePlayEvent(GetTriplePlayEvent.PLAN_LOADED, triplePlay));
			removeLoaderListeners();
		}
		
		private function parseResults(results:*):CostResults
		{
			var costs:Object = skyboy.serialization.JSON.decode(results) as Object;
			var costResults:CostResults = new CostResults();
			
			costResults.tvCost =  Number(costs["precio_tv"]);
			costResults.internetCost = Number(costs["precio_A"]);
			costResults.phoneCost = Number(costs["precio_voz"]);
			costResults.baseCost = Number(costs["precio_total"]);
			costResults.promoPrice = Number(costs["tarifa_promo"]);
			
			return costResults;
		}
		
		private function addLoaderListeners():void
		{
			loader.addEventListener(IOErrorEvent.IO_ERROR, handleIOError);
			loader.addEventListener(Event.COMPLETE, handleLoadComplete);
		}
		
		private function removeLoaderListeners():void
		{
			loader.removeEventListener(IOErrorEvent.IO_ERROR, handleIOError);
			loader.removeEventListener(Event.COMPLETE, handleLoadComplete);
		}
	}
}