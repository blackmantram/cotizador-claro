package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	import com.pixo.cotizadorclaro.view.base.Slider;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class TvChannelView extends Slider
	{
		[Skinnable]
		public var channels:Sprite;
		
		private var hbo:SelectableButton;
		
		private var minihbo:SelectableButton;
		
		private var fox:SelectableButton;
		
		private var hotPack:SelectableButton;
		
		private var revista15:SelectableButton;
		
		private var _skin:Sprite;
		
		public function TvChannelView()
		{
			channels.visible = false;
			hbo = new SelectableButton(_skin.getChildByName("hbo") as Sprite);
			hbo.addEventListener(SelectableButton.SELECTED, handleHBOSelected);
			minihbo = new SelectableButton(_skin.getChildByName("minihbo") as Sprite);
			minihbo.addEventListener(SelectableButton.SELECTED, handleMiniHBOSelected);
			fox = new SelectableButton(_skin.getChildByName("fox") as Sprite);
			fox.addEventListener(SelectableButton.SELECTED, handleFOXSelected);
			hotPack = new SelectableButton(_skin.getChildByName("hotPack") as Sprite);
			hotPack.addEventListener(SelectableButton.SELECTED, handleHotPackSelected);
			revista15 = new SelectableButton(_skin.getChildByName("revista15") as Sprite);
			revista15.addEventListener(SelectableButton.SELECTED, handleRevista15Selected);
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