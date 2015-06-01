package com.pixo.cotizadorclaro.view.component.dropdown
{
	import com.pixo.cotizadorclaro.controller.commands.boostrap.DropDownItemData;
	
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.events.TextEvent;
	import flash.text.TextField;
	
	public class DropDown extends EventDispatcher
	{
		private var inputField:TextField;
		private var skin:Sprite;
		private var items:Vector.<DropDownItem> = new Vector.<DropDownItem>();
		private var dataList:Vector.<DropDownItemData>;
		private var itemContainer:Sprite;
		private var mask:Sprite;
		
		public function DropDown(skin:Sprite)
		{
			this.skin = skin;
			inputField = skin.getChildByName("inputField") as TextField;
			itemContainer = new Sprite();
			itemContainer.y = skin.height;
			skin.addChild(itemContainer);
		}
		
		public function setData(dataList:Vector.<DropDownItemData>):void
		{
			this.dataList = dataList;
			inputField.addEventListener(MouseEvent.CLICK, handleInputFocused);
			inputField.addEventListener(KeyboardEvent.KEY_UP, handleTextInput);
			createItems();
		}
		
		private function handleInputFocused(e:Event):void
		{
			inputField.setSelection(0, inputField.text.length);
			filterItems(inputField.text);
			//skin.stage.addEventListener(MouseEvent.CLICK, handleClick);
		}
		
		private function handleTextInput(e:KeyboardEvent):void
		{
			filterItems(inputField.text);
			//skin.stage.addEventListener(MouseEvent.CLICK, handleClick);
		}
		
		private function handleClick(e:MouseEvent):void
		{
			/*if (e.target == skin.stage)
			{
				skin.stage.removeEventListener(MouseEvent.CLICK, handleClick);
				removeItems();
			}*/
		}
		
		private function createItems():void
		{
			for(var i:Number=0; i<dataList.length; i++)
			{
				var item:DropDownItem = new DropDownItem(dataList[i]);
				item.addEventListener(DropDownEvent.ITEM_SELECTED, handleItemSelected);
				items.push(item);
			}
		}
		
		private function filterItems(text:String):void
		{
			for each(var item:DropDownItem in items)
			{
				if (item.matches(text))
				{
					if (!itemContainer.contains(item))
					{
						itemContainer.addChild(item);
					}
				}
				else
				{
					if (itemContainer.contains(item))
					{
						itemContainer.removeChild(item);
					}
				}
			}
			reorganizeVisibleItems();
		}
		
		private function reorganizeVisibleItems():void
		{
			var i:Number = 0;
			for each(var item:DropDownItem in items)
			{
				if (itemContainer.contains(item))
				{
					item.y = item.height*i;
					i++;
				}
			}
		}
		
		private function handleItemSelected(e:DropDownEvent):void
		{
			inputField.text = e.item.itemName;
			removeItems();
			this.dispatchEvent(new DropDownEvent(e.type, e.item));
		}
		
		private function removeItems():void
		{
			itemContainer.removeChildren();
		}
	}
}