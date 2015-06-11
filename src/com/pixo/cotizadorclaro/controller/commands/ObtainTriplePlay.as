package com.pixo.cotizadorclaro.controller.commands
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.service.IGetTriplePlayService;
	
	import org.robotlegs.mvcs.Command;
	
	public class ObtainTriplePlay extends Command
	{
		[Inject]
		public var config:Config;
		
		[Inject]
		public var getTriplePlayService:IGetTriplePlayService;
		
		override public function execute():void
		{
			getTriplePlayService.loadPlan(config);
		}
	}
}