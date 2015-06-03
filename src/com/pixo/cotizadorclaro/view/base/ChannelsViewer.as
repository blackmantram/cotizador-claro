package com.pixo.cotizadorclaro.view.base
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class ChannelsViewer
	{
		private var close:Sprite;
		
		protected var skin:Sprite;
		
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
		
		public function show(channelID:*):void
		{
			skin.visible = true;
			showChannelsSection(channelID);
		}
		
		protected function showChannelsSection(id:*):void
		{
			throw new Error("showChannelsSection function is abstract and should be implemented");	
		}
	}
}