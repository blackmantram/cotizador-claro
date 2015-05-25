package com.pixo.cotizadorclaro.view.component
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	public class ChannelsViewer
	{
		public static const CLOSE:String = "close";
		
		private var close:Sprite;
		
		private var skin:Sprite;
		
		public function ChannelsViewer(skin:Sprite)
		{
			this.skin = skin.getChildByName("channels") as Sprite;
			close = this.skin.getChildByName("close") as Sprite;
			close.addEventListener(MouseEvent.CLICK, handleCloseSelected);
			this.skin.visible = false;
		}
		
		private function handleCloseSelected(e:MouseEvent):void
		{
			skin.visible = false;
		}

		public function show():void
		{
			skin.visible = true;
		}
	}
}