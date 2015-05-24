package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.text.TextField;
	
	public class LoginView extends SkinnableView
	{
		[Skinnable]
		public var username:TextField;
		
		[Skinnable]
		public var password:TextField;
		
		[Skinnable]
		public var loginButton:Sprite;
		
		public function LoginView()
		{
			loginButton.buttonMode = true;
		}
		
		protected override function get skin():Sprite
		{
			return new AppSkins.LoginSkin() as Sprite;
		}
	}
}