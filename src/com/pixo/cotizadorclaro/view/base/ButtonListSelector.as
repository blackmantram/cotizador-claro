package com.pixo.cotizadorclaro.view.base
{
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;

	public class ButtonListSelector extends EventDispatcher
	{
		private var buttons:Vector.<SelectableButton>;
		private var _selected:SelectableButton;
		public function get selected():SelectableButton
		{
			return _selected;
		}
		
		public function select(number:Number):void
		{
			for (var i:Number = 0; i<number; i++)
				buttons[i].select();
		}
		
		public function ButtonListSelector(skin:Sprite)
		{
			buttons = initializeButtonList(skin);
			addListeners();
		}
		
		protected function initializeButtonList(skin:Sprite):Vector.<SelectableButton>
		{
			throw new Error("method initializeButtonList is abstract and should be implemented");
		}
		
		private function addListeners():void
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
		
		protected function getButton(name:String):SelectableButton
		{
			for each(var button:SelectableButton in buttons)
				if (button.name == name)
					return button;
			return null;
		}
	}
}