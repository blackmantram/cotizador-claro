package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.view.base.ButtonListSelector;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	
	import flash.display.Sprite;
	
	public class BandSelector extends ButtonListSelector
	{
		public function BandSelector(skin:Sprite)
		{
			super(skin);
		}
		
		public function set stratum(value:Number):void
		{
			if (value>=2)
				getButton(Config.INTERNET_3).disable();
		}
		
		protected override function initializeButtonList(skin:Sprite):Vector.<SelectableButton>
		{
			return new <SelectableButton>[
				new SelectableButton(skin.getChildByName("int20") as Sprite, Config.INTERNET_20), 
				new SelectableButton(skin.getChildByName("int10") as Sprite, Config.INTERNET_10),
				new SelectableButton(skin.getChildByName("int5") as Sprite, Config.INTERNET_5),
				new SelectableButton(skin.getChildByName("int3") as Sprite, Config.INTERNET_3)
			];
		}
	}
}