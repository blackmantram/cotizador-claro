package com.pixo.cotizadorclaro.controller.commands
{
	import com.pixo.cotizadorclaro.model.Config;
	
	import org.robotlegs.mvcs.Command;
	
	public class PhoneSelected extends Command
	{
		[Inject]
		public var selectedItems:Config;
		
		override public function execute():void
		{
			selectedItems.phone = !selectedItems.phone; 
		}
	}
}