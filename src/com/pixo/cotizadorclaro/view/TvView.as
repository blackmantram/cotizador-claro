package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.BasicChannelsViewer;
	import com.pixo.cotizadorclaro.view.component.TvPlanSelector;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class TvView extends Slider
	{
		private var channels:BasicChannelsViewer;
		
		[Skinnable]
		public var channels_basica:Sprite;
		
		[Skinnable]
		public var channels_basica_premium:Sprite;
		
		[Skinnable]
		public var channels_avanzada:Sprite;
		
		public var planSelector:TvPlanSelector;
		
		private var _skin:Sprite;
		
		public function TvView()
		{
			planSelector = new TvPlanSelector(skin);
			addListeners();
			channels = new BasicChannelsViewer(skin);
		}
		
		private function addListeners():void
		{
			channels_basica.addEventListener(MouseEvent.CLICK, function(e:MouseEvent):void{showChannels(BasicChannelsViewer.BASICA)});
			channels_basica_premium.addEventListener(MouseEvent.CLICK, function(e:MouseEvent):void{showChannels(BasicChannelsViewer.PREMIUM)});
			channels_avanzada.addEventListener(MouseEvent.CLICK, function(e:MouseEvent):void{showChannels(BasicChannelsViewer.AVANZADA)});
		}
		
		private function showChannels(type:String):void
		{
			channels.show(type);
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Tv() as Sprite;
			return _skin;
		}
	}
}