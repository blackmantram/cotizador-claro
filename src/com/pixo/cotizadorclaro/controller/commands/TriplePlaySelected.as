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
			selectedItems.triplePlay = !selectedItems.triplePlay;
		}
	}
}