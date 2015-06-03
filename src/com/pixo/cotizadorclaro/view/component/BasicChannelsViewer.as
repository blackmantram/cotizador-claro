package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.view.base.ChannelsViewer;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class BasicChannelsViewer extends ChannelsViewer
	{
		public static const CLOSE:String = "close";
		
		public static const BASICA:String = "basica";
		
		public static const AVANZADA:String = "avanzada";
		
		public static const PREMIUM:String = "premium";
		
		private var channels:Object = new Object();
		
		private var scrollPanel:ScrollPanel;
		
		public function BasicChannelsViewer(skin:Sprite)
		{
			super(skin);
			scrollPanel = new ScrollPanel(
				this.skin.getChildByName("scrollPanel") as Sprite,
				this.skin.getChildByName("view") as Sprite
			);
			extractChannels();
		}
		
		private function extractChannels():void
		{
			var channelsIds:Array = [BasicChannelsViewer.BASICA, BasicChannelsViewer.AVANZADA, BasicChannelsViewer.PREMIUM];
			for each(var channelID:String in channelsIds)
			{
				var title:Sprite = skin.getChildByName(channelID+"_title") as Sprite;
				var content:Sprite = skin.getChildByName(channelID+"_ch") as Sprite;
				title.visible = false; content.visible = false;
				channels[channelID] = {"title":title, "content":content};
			}
		}
		
		protected override function showChannelsSection(channelID:*):void
		{
			scrollPanel.setTitle(channels[channelID]["title"] as Sprite);
			scrollPanel.setContent(channels[channelID]["content"] as Sprite);
		}
	}
}