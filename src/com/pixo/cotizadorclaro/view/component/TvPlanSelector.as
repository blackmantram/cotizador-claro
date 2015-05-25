package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.view.base.ButtonListSelector;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	
	import flash.display.Sprite;

	public class TvPlanSelector extends ButtonListSelector
	{
		public function TvPlanSelector(skin:Sprite)
		{
			super(skin);
		}
		
		protected override function initializeButtonList(skin:Sprite):Vector.<SelectableButton>
		{
			return new <SelectableButton>[
				new SelectableButton(skin.getChildByName("basica") as Sprite, "basica"), 
				new SelectableButton(skin.getChildByName("basica_premium") as Sprite, "basica_premium"),
				new SelectableButton(skin.getChildByName("avanzada") as Sprite, "avanzada")
			];
		}
		
		protected override function executeOnButtonSelected(target:SelectableButton):void
		{
			trace(target.name);	
		}
	}
}