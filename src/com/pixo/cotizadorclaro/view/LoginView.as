package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import flash.display.Sprite;
	
	public class LoginView extends Sprite
	{
		public function LoginView()
		{
			var skin:Sprite = new AppSkins.LoginSkin() as Sprite;
			addChild(skin);
		}
	}
}