package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.ChannelsViewer;
	import com.pixo.cotizadorclaro.view.component.TvPlanSelector;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class TvView extends Slider
	{
		private var channels:ChannelsViewer;
		
		[Skinnable]
		public var channels_basica:Sprite;
		
		[Skinnable]
		public var channels_basica_premium:Sprite;
		
		[Skinnable]
		public var channels_avanzada:Sprite;
		
		private var planSelector:TvPlanSelector;
		
		private var _skin:Sprite;
		
		public function TvView()
		{
			planSelector = new TvPlanSelector(skin);
			addListeners();
			channels = new ChannelsViewer(skin);
		}
		
		private function addListeners():void
		{
			channels_basica.addEventListener(MouseEvent.CLICK, handleChannels);
			channels_basica_premium.addEventListener(MouseEvent.CLICK, handleChannels);
			channels_avanzada.addEventListener(MouseEvent.CLICK, handleChannels);
		}
		
		private function handleChannels(e:MouseEvent):void
		{
			channels.show();
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Tv() as Sprite;
			return _skin;
		}
	}
}