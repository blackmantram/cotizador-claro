package com.pixo.cotizadorclaro.view.base
{
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;

	public class ButtonListSelector
	{
		private var selected:SelectableButton;
		
		public function ButtonListSelector(skin:Sprite)
		{
			var buttons:Vector.<SelectableButton> = initializeButtonList(skin);
			addListeners(buttons);
		}
		
		protected function initializeButtonList(skin:Sprite):Vector.<SelectableButton>
		{
			throw new Error("method initializeButtonList is abstract and should be implemented");
		}
		
		protected function executeOnButtonSelected(target:SelectableButton):void
		{
			throw new Error("method executeOnButtonSelected is abstract and should be implemented");
		}
		
		private function addListeners(buttons:Vector.<SelectableButton>):void
		{
			for each(var button:SelectableButton in buttons)
				button.addEventListener(SelectableButton.SELECTED, handleButtonSelected);
		}
		
		private function handleButtonSelected(e:Event):void
		{
			if (selected!= null)
				selected.unselect();
			selected =  e.target as SelectableButton;
			selected.select();
			executeOnButtonSelected(selected);
		}
		
		
	}
}