package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	import com.pixo.cotizadorclaro.view.component.SelectedItems;
	
	import flash.display.Sprite;
	import flash.text.TextField;
	
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
		
		[Skinnable]
		public var selectedItems:SelectedItems;
		
		[Skinnable]
		public var stratum:TextField;
		
		private var _skin:Sprite;
		
		public function PreviewView()
		{
			settings.visible = false;
			details.visible = false;
			selectedItems = new SelectedItems(skin.getChildByName("selectedItems") as Sprite);
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Preview() as Sprite;
			return _skin;
		}
	}
}