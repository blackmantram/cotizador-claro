package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	
	import flash.display.Sprite;
	
	public class PreviewView extends SkinnableView
	{
		[Skinnable]
		public var registry:Sprite;
		
		[Skinnable]
		public var tv:Sprite;
		
		[Skinnable]
		public var internet:Sprite;
		
		[Skinnable]
		public var phone:Sprite;
		
		[Skinnable]
		public var settings:Sprite;
		
		[Skinnable]
		public var details:Sprite;
		
		
		private var _skin:Sprite;
		
		public function PreviewView()
		{
			settings.visible = false;
			details.visible = false;
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Preview() as Sprite;
			return _skin;
		}
	}
}