package com.pixo.cotizadorclaro.view
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.service.CostResults;
	import com.pixo.cotizadorclaro.view.base.SkinnableView;
	import com.pixo.cotizadorclaro.view.component.Details;
	import com.pixo.cotizadorclaro.view.component.SelectedItems;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
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
		public var stratum:TextField;
		
		[Skinnable]
		public var tvTotal:TextField;
		
		[Skinnable]
		public var internetTotal:TextField;
		
		[Skinnable]
		public var phoneTotal:TextField;
		
		[Skinnable]
		public var grandTotal:TextField;
		
		[Skinnable]
		public var detailsButton:Sprite;
		
		public var selectedItems:SelectedItems;
		
		public var details:Details;
		
		private var _skin:Sprite;
		
		public function PreviewView()
		{
			selectedItems = new SelectedItems(skin.getChildByName("selectedItems") as Sprite);
			details = new Details(skin.getChildByName("details") as Sprite);
			settings.visible = false;
			details.visible = false;
			detailsButton.addEventListener(MouseEvent.CLICK, handleDetailsButtonPressed);
		}
		
		private function handleDetailsButtonPressed(e:MouseEvent):void
		{
			details.show();
		}
		
		protected override function get skin():Sprite
		{
			if (_skin == null) _skin = new AppSkins.Preview() as Sprite;
			return _skin;
		}
		
		public function setData(config:Config, costs:CostResults):void
		{
			selectedItems.setData(config, costs);
			details.setData(config, costs);
			setCosts(costs);
			stratum.text = config.stratum+"";
		}
		
		private function setCosts(costs:CostResults):void
		{
			tvTotal.text = costs.tvCost+"";
			internetTotal.text = costs.internetCost+"";
			phoneTotal.text = costs.phoneCost+"";
			grandTotal.text = costs.totalPrice+"";
		}
	}
}