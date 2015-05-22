package com.pixo.cotizadorclaro
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.LoginView;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class AppView extends Sprite
	{
		private var container:Sprite;
		
		private var login:DisplayObject;	
		
		public function AppView()
		{
			var skin:Sprite = new AppSkins.MainSkin() as Sprite;
			addChild(skin);
			container = skin.getChildByName("content") as Sprite;
			
			login = new LoginView();
			container.addChild(login);
		}
	}
}