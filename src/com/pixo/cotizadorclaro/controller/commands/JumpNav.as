package com.pixo.cotizadorclaro.controller.commands
{
	import com.pixo.cotizadorclaro.controller.events.AppEvent;
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.model.Navigation;
	
	import org.robotlegs.mvcs.Command;
	
	public class JumpNav extends Command
	{
		[Inject]
		public var navigation:Navigation;
		
		[Inject]
		public var config:Config;
		
		[Inject]
		public var event:NavEvent;
		
		override public function execute():void
		{
			selectSection(event.to);
			navigation.Jump(event.to);
			dispatch(new AppEvent(event.to));
		}
		
		private function selectSection(section:String):void
		{
			if (section == AppEvent.GO_TO_TV)
				config.tv = true;
			if (section == AppEvent.GO_TO_INTERNET)
				config.internet = true;
			if (section == AppEvent.GO_TO_PHONE)
				config.phone = true;
		}
	}
}