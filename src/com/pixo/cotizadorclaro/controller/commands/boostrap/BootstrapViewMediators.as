package com.pixo.cotizadorclaro.controller.commands.boostrap
{
	import com.pixo.cotizadorclaro.AppView;
	import com.pixo.cotizadorclaro.AppViewMediator;
	import com.pixo.cotizadorclaro.view.CityView;
	import com.pixo.cotizadorclaro.view.CityViewMediator;
	import com.pixo.cotizadorclaro.view.InternetView;
	import com.pixo.cotizadorclaro.view.InternetViewMediator;
	import com.pixo.cotizadorclaro.view.LoginView;
	import com.pixo.cotizadorclaro.view.LoginViewMediator;
	import com.pixo.cotizadorclaro.view.PhoneView;
	import com.pixo.cotizadorclaro.view.PhoneViewMediator;
	import com.pixo.cotizadorclaro.view.ServicesView;
	import com.pixo.cotizadorclaro.view.ServicesViewMediator;
	import com.pixo.cotizadorclaro.view.StratumView;
	import com.pixo.cotizadorclaro.view.StratumViewMediator;
	import com.pixo.cotizadorclaro.view.TriplePlayView;
	import com.pixo.cotizadorclaro.view.TriplePlayViewMediator;
	import com.pixo.cotizadorclaro.view.TvChannelView;
	import com.pixo.cotizadorclaro.view.TvChannelViewMediator;
	import com.pixo.cotizadorclaro.view.TvDecoView;
	import com.pixo.cotizadorclaro.view.TvDecoViewMediator;
	import com.pixo.cotizadorclaro.view.TvView;
	import com.pixo.cotizadorclaro.view.TvViewMediator;
	
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
			mediatorMap.mapView(TvView, TvViewMediator);
			mediatorMap.mapView(TvDecoView, TvDecoViewMediator);
			mediatorMap.mapView(TvChannelView, TvChannelViewMediator);
			mediatorMap.mapView(InternetView, InternetViewMediator);
			mediatorMap.mapView(PhoneView, PhoneViewMediator);
		}
	
	}

}