package com.pixo.cotizadorclaro.view.base
{
	import flash.display.Sprite;

	public class Slider extends SkinnableView
	{
		[Skinnable]
		public var prevButton:Sprite;
		
		[Skinnable]
		public var nextButton:Sprite;
		
		public function Slider()
		{
			prevButton.buttonMode = true;
			nextButton.buttonMode = true;
		}
	}
}