package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	import com.pixo.cotizadorclaro.view.base.Slider;
	import com.pixo.cotizadorclaro.view.component.ChannelsViewer;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class TvChannelView extends Slider
	{
		[Skinnable]
		public var channels_hbo:Sprite;
		
		[Skinnable]
		public var channels_minihbo:Sprite;
		
		[Skinnable]
		public var channels_fox:Sprite;
		
		[Skinnable]
		public var channels_hotpack:Sprite;
		
		private var channels:ChannelsViewer;
		
		private var hbo:SelectableButton;
		
		private var minihbo:SelectableButton;
		
		private var fox:SelectableButton;
		
		private var hotPack:SelectableButton;
		
		private var revista15:SelectableButton;
		
		private var _skin:Sprite;
		
		public function TvChannelView()
		{
			channels = new ChannelsViewer(skin);
			initializeButtons();
			addListeners();
		}
		
		private function initializeButtons():void
		{
			hbo = new SelectableButton(_skin.getChildByName("hbo") as Sprite);
			minihbo = new SelectableButton(_skin.getChildByName("minihbo") as Sprite);
			fox = new SelectableButton(_skin.getChildByName("fox") as Sprite);
			hotPack = new SelectableButton(_skin.getChildByName("hotPack") as Sprite);
			revista15 = new SelectableButton(_skin.getChildByName("revista15") as Sprite);
		}
		
		private function addListeners():void
		{
			hbo.addEventListener(SelectableButton.SELECTED, handleHBOSelected);
			minihbo.addEventListener(SelectableButton.SELECTED, handleMiniHBOSelected);
			fox.addEventListener(SelectableButton.SELECTED, handleFOXSelected);
			hotPack.addEventListener(SelectableButton.SELECTED, handleHotPackSelected);
			revista15.addEventListener(SelectableButton.SELECTED, handleRevista15Selected);
			channels_hbo.addEventListener(MouseEvent.CLICK, handleChannels);
			channels_minihbo.addEventListener(MouseEvent.CLICK, handleChannels);
			channels_fox.addEventListener(MouseEvent.CLICK, handleChannels);
			channels_hotpack.addEventListener(MouseEvent.CLICK, handleChannels);
		}
		
		private function handleChannels(e:MouseEvent):void
		{
			channels.show();
		}
		
		private function handleHBOSelected(e:Event):void
		{
			hbo.toggle();	
		}
		
		private function handleMiniHBOSelected(e:Event):void
		{
			minihbo.toggle();	
		}
		
		private function handleFOXSelected(e:Event):void
		{
			fox.toggle();	
		}
		
		private function handleHotPackSelected(e:Event):void
		{
			hotPack.toggle();	
		}
		
		private function handleRevista15Selected(e:Event):void
		{
			revista15.toggle();	
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Tv_Channel() as Sprite;
			return _skin;
		}
	}
}