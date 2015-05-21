package com.pixo.cotizadorclaro
{
	import com.pixo.cotizadorclaro.controller.commands.boostrap.BootsrapAppStartup;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	
	public class AppContext extends Context
	{
		public function AppContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		override public function startup():void
		{
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, BootsrapAppStartup, ContextEvent, true);
			super.startup();
		}
	}
}