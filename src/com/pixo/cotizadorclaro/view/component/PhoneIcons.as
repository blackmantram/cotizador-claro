package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.model.Config;
	
	import flash.display.Sprite;

	public class PhoneIcons
	{
		private var skin:Sprite;
		
		public function PhoneIcons(skin:Sprite)
		{
			this.skin = skin;
		}
		
		private function init():void
		{
			for(var i:Number=1; i<=4; i++)
				skin.getChildByName("phone"+i).visible = false;
		}
		
		public function setData(config:Config):void
		{
			init();
			var phoneCount:Number = config.phonelines;
			for(var i:Number=1; i<=phoneCount; i++)
				skin.getChildByName("phone"+i).visible = true;
		}
	}
}