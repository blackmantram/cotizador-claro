package com.pixo.cotizadorclaro
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.CityView;
	import com.pixo.cotizadorclaro.view.LoginView;
	import com.pixo.cotizadorclaro.view.ServicesView;
	import com.pixo.cotizadorclaro.view.StratumView;
	import com.pixo.cotizadorclaro.view.TriplePlayView;
	
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
		
		private function addView(view:DisplayObject):void
		{
			if (activeView != null)
				container.removeChild(activeView);
			container.addChild(view);
			activeView = view;
		}
	}
}