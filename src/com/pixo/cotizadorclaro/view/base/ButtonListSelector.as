package com.pixo.cotizadorclaro.view.base
{
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;

	public class ButtonListSelector extends EventDispatcher
	{
		
		private var _selected:SelectableButton;
		public function get selected():SelectableButton
		{
			return _selected;
		}
		
		public function ButtonListSelector(skin:Sprite)
		{
			var buttons:Vector.<SelectableButton> = initializeButtonList(skin);
			addListeners(buttons);
		}
		
		protected function initializeButtonList(skin:Sprite):Vector.<SelectableButton>
		{
			throw new Error("method initializeButtonList is abstract and should be implemented");
		}
		
		private function addListeners(buttons:Vector.<SelectableButton>):void
		{
			for each(var button:SelectableButton in buttons)
				button.addEventListener(SelectableButton.SELECTED, handleButtonSelected);
		}
		
		private function handleButtonSelected(e:Event):void
		{
			if (_selected!= null)
				_selected.unselect();
			_selected =  e.target as SelectableButton;
			_selected.select();
			executeButtonSelectedEvent();
		}
		
		private function executeButtonSelectedEvent():void
		{
			dispatchEvent(new Event(Event.SELECT));
		}
	}
}