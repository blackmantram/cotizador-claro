package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.view.base.ButtonListSelector;
	import com.pixo.cotizadorclaro.view.base.SelectableButton;
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class NumberSelector extends ButtonListSelector
	{
		private var count:Number;
		
		public function NumberSelector(skin:Sprite, count:Number)
		{
			this.count = count;
			super(skin);
		}
		
		protected override function initializeButtonList(skin:Sprite):Vector.<SelectableButton>
		{
			var buttons:Vector.<SelectableButton> = new Vector.<SelectableButton>();
			for(var i:Number=1; i<=count; i++)
				buttons.push(new NumberButton(skin, i));
			return buttons;
		}
	}
}