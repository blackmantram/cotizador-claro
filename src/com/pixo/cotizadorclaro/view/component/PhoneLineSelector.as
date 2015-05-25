package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.view.base.ButtonListSelector;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	
	import flash.display.Sprite;
	
	public class PhoneLineSelector extends ButtonListSelector
	{
		public function PhoneLineSelector(skin:Sprite)
		{
			super(skin);
		}
		
		protected override function initializeButtonList(skin:Sprite):Vector.<SelectableButton>
		{
			return new <SelectableButton>[
				new SelectableButton(skin.getChildByName("line1") as Sprite, "1"), 
				new SelectableButton(skin.getChildByName("line2") as Sprite, "2"),
				new SelectableButton(skin.getChildByName("line3") as Sprite, "3"),
				new SelectableButton(skin.getChildByName("line4") as Sprite, "4")
			];
		}
		
		protected override function executeOnButtonSelected(target:SelectableButton):void
		{
			trace(target.name);	
		}
	}
}