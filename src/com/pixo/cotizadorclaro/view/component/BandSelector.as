package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.view.base.ButtonListSelector;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	
	import flash.display.Sprite;
	
	public class BandSelector extends ButtonListSelector
	{
		public function BandSelector(skin:Sprite)
		{
			super(skin);
		}
		
		protected override function initializeButtonList(skin:Sprite):Vector.<SelectableButton>
		{
			return new <SelectableButton>[
				new SelectableButton(skin.getChildByName("int20") as Sprite, "20"), 
				new SelectableButton(skin.getChildByName("int10") as Sprite, "10"),
				new SelectableButton(skin.getChildByName("int5") as Sprite, "5"),
				new SelectableButton(skin.getChildByName("int3") as Sprite, "3")
			];
		}
		
		protected override function executeOnButtonSelected(target:SelectableButton):void
		{
			trace(target.name);	
		}
	}
}