package com.pixo.cotizadorclaro.controller.commands
{
	import com.pixo.cotizadorclaro.model.Config;
	
	import org.robotlegs.mvcs.Command;
	
	public class TriplePlaySelected extends Command
	{
		[Inject]
		public var selectedItems:Config;
		
		override public function execute():void
		{
			if (!selectedItems.isTriplePlaySelected)
			{
				selectedItems.phone = true;
				selectedItems.internet = true;
				selectedItems.tv = true;
			}
			else
			{
				selectedItems.phone = false;
				selectedItems.internet = false;
				selectedItems.tv = false;
			}
		}
	}
}