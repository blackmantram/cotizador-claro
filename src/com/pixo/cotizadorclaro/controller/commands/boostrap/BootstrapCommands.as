package com.pixo.cotizadorclaro.controller.commands.boostrap
{
	
	import com.pixo.cotizadorclaro.controller.commands.InternetSelected;
	import com.pixo.cotizadorclaro.controller.commands.JumpNav;
	import com.pixo.cotizadorclaro.controller.commands.NextNav;
	import com.pixo.cotizadorclaro.controller.commands.PhoneSelected;
	import com.pixo.cotizadorclaro.controller.commands.PrevNav;
	import com.pixo.cotizadorclaro.controller.commands.TriplePlaySelected;
	import com.pixo.cotizadorclaro.controller.commands.TvSelected;
	import com.pixo.cotizadorclaro.controller.events.ConfigEvent;
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapCommands extends Command
	{
		override public function execute():void
		{
			commandMap.mapEvent(ConfigEvent.TV, TvSelected);
			commandMap.mapEvent(ConfigEvent.INTERNET, InternetSelected);
			commandMap.mapEvent(ConfigEvent.PHONE, PhoneSelected);
			commandMap.mapEvent(ConfigEvent.TRIPLE_PLAY, TriplePlaySelected);
			
			commandMap.mapEvent(NavEvent.NEXT, NextNav);
			commandMap.mapEvent(NavEvent.PREV, PrevNav);
			commandMap.mapEvent(NavEvent.JUMP, JumpNav, NavEvent);
		}
	}
}