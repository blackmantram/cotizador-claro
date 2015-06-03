package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.view.base.ChannelsViewer;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;

	public class AdditionalChannelsViewer extends ChannelsViewer
	{
		private var channelsClip:MovieClip;
		
		public function AdditionalChannelsViewer(skin:Sprite)
		{
			super(skin);
			channelsClip = this.skin.getChildByName("channelsClip") as MovieClip;
		}
		
		protected override function showChannelsSection(channelID:*):void
		{
			channelsClip.gotoAndStop(channelID);
		}
	}
}