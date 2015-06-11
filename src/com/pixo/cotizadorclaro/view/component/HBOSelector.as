package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.view.base.ButtonListSelector;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	
	import flash.display.Sprite;
	
	public class HBOSelector extends ButtonListSelector
	{
		public function HBOSelector(skin:Sprite)
		{
			super(skin);
		}
		
		protected override function initializeButtonList(skin:Sprite):Vector.<SelectableButton>
		{
			return new <SelectableButton>[
				new SelectableButton(skin.getChildByName("hbo1") as Sprite, Config.HBO_1+""), 
				new SelectableButton(skin.getChildByName("hbo2") as Sprite, Config.HBO_2+"")
			];
		}
	}
}