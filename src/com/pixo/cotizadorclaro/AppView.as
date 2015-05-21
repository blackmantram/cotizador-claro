package com.pixo.cotizadorclaro
{
	import com.pixo.cotizadorclaro.view.LoginView;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class AppView extends Sprite
	{
		private var login:DisplayObject;	
		
		public function AppView()
		{trace("hijo!");
			login = new LoginView();
			addChild(login);
		}
	}
}