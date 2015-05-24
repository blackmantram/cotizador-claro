package com.pixo.cotizadorclaro.controller.commands.boostrap
{
	import com.pixo.cotizadorclaro.AppView;
	import com.pixo.cotizadorclaro.AppViewMediator;
	import com.pixo.cotizadorclaro.view.CityView;
	import com.pixo.cotizadorclaro.view.CityViewMediator;
	import com.pixo.cotizadorclaro.view.LoginView;
	import com.pixo.cotizadorclaro.view.LoginViewMediator;
	import com.pixo.cotizadorclaro.view.ServicesView;
	import com.pixo.cotizadorclaro.view.ServicesViewMediator;
	import com.pixo.cotizadorclaro.view.StratumView;
	import com.pixo.cotizadorclaro.view.StratumViewMediator;
	import com.pixo.cotizadorclaro.view.TriplePlayView;
	import com.pixo.cotizadorclaro.view.TriplePlayViewMediator;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapViewMediators extends Command
	{
	
		override public function execute():void
		{
			mediatorMap.mapView(AppView, AppViewMediator);
			mediatorMap.mapView(LoginView, LoginViewMediator);
			mediatorMap.mapView(CityView, CityViewMediator);
			mediatorMap.mapView(StratumView, StratumViewMediator);
			mediatorMap.mapView(TriplePlayView, TriplePlayViewMediator);
			mediatorMap.mapView(ServicesView, ServicesViewMediator);
		}
	
	}

}