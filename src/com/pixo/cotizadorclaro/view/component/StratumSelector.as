package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class StratumSelector
	{
		private var s1:StratumButton;
		
		private var s2:StratumButton;
		
		private var s3:StratumButton;
		
		private var s4:StratumButton;
		
		private var s5:StratumButton;
		
		private var s6:StratumButton;
		
		private var selected:StratumButton;
		
		public function StratumSelector(skin:Sprite)
		{
			s1 = new StratumButton(skin, 1);
			s2 = new StratumButton(skin, 2);
			s3 = new StratumButton(skin, 3);
			s4 = new StratumButton(skin, 4);
			s5 = new StratumButton(skin, 5);
			s6 = new StratumButton(skin, 6);
			addListeners();
		}
		
		private function addListeners():void
		{
			s1.addEventListener(SelectableButton.SELECTED, onStratumSelected);
			s2.addEventListener(SelectableButton.SELECTED, onStratumSelected);
			s3.addEventListener(SelectableButton.SELECTED, onStratumSelected);
			s4.addEventListener(SelectableButton.SELECTED, onStratumSelected);
			s5.addEventListener(SelectableButton.SELECTED, onStratumSelected);
			s6.addEventListener(SelectableButton.SELECTED, onStratumSelected);
		}
		
		private function onStratumSelected(e:Event):void
		{
			if (selected!= null)
				selected.unselect();
			selected =  e.target as StratumButton;
			selected.select();
			trace(selected.position);	
		}
	}
}