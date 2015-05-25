package com.pixo.cotizadorclaro.controller.commands
{
	import com.pixo.cotizadorclaro.model.Navigation;
	
	import org.robotlegs.mvcs.Command;
	
	public class PrevNav extends Command
	{
		[Inject]
		public var navigation:Navigation;
		
		override public function execute():void
		{
			dispatch(navigation.prevEvent);
		}
	}
}