package com.pixo.cotizadorclaro.view.component.dropdown
{
	import assets.skins.AppSkins;
	
	import com.pixo.cotizadorclaro.controller.commands.boostrap.DropDownItemData;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	import mx.utils.StringUtil;
	
	public class DropDownItem extends Sprite
	{
		private var text:TextField;
		private var skin:Sprite;
		private var itemData:DropDownItemData;
		private var _itemName:String;
		
		public function get itemName():String
		{
			return itemData.name;
		}
		
		public function matches(text:String):Boolean
		{
			if (StringUtil.trim(text).length == 0)
				return true;
			return itemData.name.toLowerCase().indexOf(text.toLowerCase()) == 0;
		}
		
		public function DropDownItem(itemData:DropDownItemData)
		{
			this.itemData = itemData;
			skin = new AppSkins.DropDownItem() as Sprite;
			text = skin.getChildByName("text") as TextField;
			text.text = itemName;
			addChild(skin);
			this.addEventListener(MouseEvent.CLICK, handleClick);
		}
		
		private function handleClick(e:MouseEvent):void
		{
			this.dispatchEvent(new DropDownEvent(DropDownEvent.ITEM_SELECTED, this));
		}
	}
}