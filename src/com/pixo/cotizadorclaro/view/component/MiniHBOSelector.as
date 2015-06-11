package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.view.base.ButtonListSelector;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	
	import flash.display.Sprite;
	
	public class MiniHBOSelector extends ButtonListSelector
	{
		public function MiniHBOSelector(skin:Sprite)
		{
			super(skin);
		}
		
		protected override function initializeButtonList(skin:Sprite):Vector.<SelectableButton>
		{
			return new <SelectableButton>[
				new SelectableButton(skin.getChildByName("minihbo1") as Sprite, Config.MINIHBO_1+""), 
				new SelectableButton(skin.getChildByName("minihbo2") as Sprite, Config.MINIHBO_2+"")
			];
		}
	}
}