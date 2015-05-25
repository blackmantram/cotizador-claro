package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.model.CostCalculator;
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
		
		[Skinnable]
		public var tvTotal:TextField;
		
		[Skinnable]
		public var internetTotal:TextField;
		
		[Skinnable]
		public var phoneTotal:TextField;
		
		[Skinnable]
		public var grandTotal:TextField;
		
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
		
		public function setData(config:Config):void
		{
			selectedItems.setData(config);
			stratum.text = config.stratum+"";
			calculate(config);
		}
		
		private function calculate(config:Config):void
		{
			var calculator:CostCalculator = new CostCalculator(config);
			tvTotal.text = calculator.tvTotal+"";
			internetTotal.text = calculator.internetTotal+"";
			phoneTotal.text = calculator.phoneTotal+"";
			grandTotal.text = calculator.grandTotal+"";
		}
	}
}