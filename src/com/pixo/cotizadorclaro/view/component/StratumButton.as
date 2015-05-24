package com.pixo.cotizadorclaro.view.component
{
	import flash.display.Sprite;
	import flash.text.TextField;

	public class StratumButton extends SelectableButton
	{
		public var text:TextField;
		
		private var _position:Number;
		
		public function get position():Number
		{
			return _position;
		}
		
		public function StratumButton(skin:Sprite, position:Number)
		{
			super(skin.getChildByName("s"+position) as Sprite);
			text = this.skin.getChildByName("positionText") as TextField;
			_position = position;
			text.text = position+"";
		}
	}
}