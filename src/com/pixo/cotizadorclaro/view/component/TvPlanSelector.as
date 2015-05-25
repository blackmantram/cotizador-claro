package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.model.Config;
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
				new SelectableButton(skin.getChildByName("basica") as Sprite, Config.TV_BASICA), 
				new SelectableButton(skin.getChildByName("basica_premium") as Sprite, Config.TV_BASICA_PREMIUM),
				new SelectableButton(skin.getChildByName("avanzada") as Sprite, Config.TV_AVANZADA)
			];
		}
	}
}