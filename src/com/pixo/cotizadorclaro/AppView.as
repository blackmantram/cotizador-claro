package com.pixo.cotizadorclaro
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.CityView;
	import com.pixo.cotizadorclaro.view.InternetView;
	import com.pixo.cotizadorclaro.view.LoginView;
	import com.pixo.cotizadorclaro.view.PhoneView;
	import com.pixo.cotizadorclaro.view.PreviewView;
	import com.pixo.cotizadorclaro.view.RegistryView;
	import com.pixo.cotizadorclaro.view.ServicesView;
	import com.pixo.cotizadorclaro.view.StratumView;
	import com.pixo.cotizadorclaro.view.TriplePlayView;
	import com.pixo.cotizadorclaro.view.TvChannelView;
	import com.pixo.cotizadorclaro.view.TvDecoView;
	import com.pixo.cotizadorclaro.view.TvView;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class AppView extends Sprite
	{
		private var container:Sprite;
		
		private var _login:LoginView;
		private var _city:CityView;
		private var _stratum:StratumView;
		private var _tripleplay:TriplePlayView;
		private var _services:ServicesView;
		private var _tv:TvView;
		private var _tvdeco:TvDecoView;
		private var _tvchannel:TvChannelView;
		private var _int:InternetView;
		private var _pho:PhoneView;
		private var _preview:PreviewView;
		private var _registry:RegistryView;
		
		private var activeView:DisplayObject;
		
		private function get login():LoginView
		{
			if (_login == null) _login=new LoginView(); 
			return _login;
		}
		
		private function get city():CityView
		{
			if (_city == null) _city=new CityView(); 
			return _city;
		}
		
		private function get stratum():StratumView
		{
			if (_stratum == null) _stratum=new StratumView(); 
			return _stratum;
		}
		
		private function get tripleplay():TriplePlayView
		{
			if (_tripleplay == null) _tripleplay=new TriplePlayView(); 
			return _tripleplay;
		}
		
		private function get services():ServicesView
		{
			if (_services == null) _services=new ServicesView(); 
			return _services;
		}
		
		private function get tv():TvView
		{
			if (_tv == null) _tv=new TvView(); 
			return _tv;
		}
		
		private function get tvdeco():TvDecoView
		{
			if (_tvdeco == null) _tvdeco=new TvDecoView(); 
			return _tvdeco;
		}
		
		private function get tvchannel():TvChannelView
		{
			if (_tvchannel == null) _tvchannel=new TvChannelView(); 
			return _tvchannel;
		}
		
		private function get internet():InternetView
		{
			if (_int == null) _int=new InternetView(); 
			return _int;
		}
		
		private function get phone():PhoneView
		{
			if (_pho == null) _pho=new PhoneView(); 
			return _pho;
		}
		
		private function get preview():PreviewView
		{
			if (_preview == null) _preview=new PreviewView(); 
			return _preview;
		}
		
		private function get registry():RegistryView
		{
			if (_registry == null) _registry=new RegistryView(); 
			return _registry;
		}
		
		public function AppView()
		{
			var skin:Sprite = new AppSkins.MainSkin() as Sprite;
			addChild(skin);
			container = skin.getChildByName("content") as Sprite;
			
			addView(login);
		}
		
		public function showCity():void
		{
			addView(city);
		}
		
		public function showStratum():void
		{
			addView(stratum);
		}
		
		public function showTriplePlay():void
		{
			addView(tripleplay);
		}
		
		public function showServices():void
		{
			addView(services);
		}
		
		public function showTv():void
		{
			addView(tv);
		}
		
		public function showTvDeco():void
		{
			addView(tvdeco);
		}
		
		public function showTvChannel():void
		{
			addView(tvchannel);
		}
		
		public function showInternet():void
		{
			addView(internet);
		}
		
		public function showPhone():void
		{
			addView(phone);
		}
		
		public function showPreview():void
		{
			addView(preview);
		}
		
		public function showRegistry():void
		{
			addView(registry);
		}
		
		private function addView(view:DisplayObject):void
		{
			if (activeView != null)
				container.removeChild(activeView);
			container.addChild(view);
			activeView = view;
		}
	}
}