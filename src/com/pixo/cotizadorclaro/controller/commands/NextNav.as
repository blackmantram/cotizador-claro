package com.pixo.cotizadorclaro.controller.commands
{
	import com.pixo.cotizadorclaro.model.Navigation;
	
	import org.robotlegs.mvcs.Command;
	
	public class NextNav extends Command
	{
		[Inject]
		public var navigation:Navigation;
		
		override public function execute():void
		{
			dispatch(navigation.nextEvent);
		}
	}
}