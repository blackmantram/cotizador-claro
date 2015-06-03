package com.pixo.cotizadorclaro.view.component
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	public class ScrollPanel
	{
		private var title:DisplayObject;
		
		private var content:DisplayObject;
		
		private var view:DisplayObject;
		
		private var container:Sprite;
		
		private var isHolding:Boolean;
		
		private var holdY:Number;
		
		private function get minScrollPosition():Number
		{
			return view.height-content.height;
		}
		
		private function get maxScrollPosition():Number
		{
			return 0;
		}
		
		private function get isContentTallerThanView():Boolean
		{
			return content.height>view.height;
		}
		
		public function ScrollPanel(container:Sprite, view:DisplayObject)
		{
			this.container = container;
			this.view = view;
		}
		
		public function setTitle(title:DisplayObject):void
		{
			resetCurrentTitle();
			title.visible = true;
			this.title = title;
		}
		
		public function setContent(content:DisplayObject):void
		{
			resetCurrentContent();
			content.visible = true;
			this.content = content;
			content.x = (container.width - content.width)/2;
			content.y = maxScrollPosition;
			container.addChild(content);
			activate();
		}
		
		private function activate():void
		{
			if (isContentTallerThanView)
			{
				content.addEventListener(MouseEvent.MOUSE_DOWN, handleMouseDown);
				content.stage.addEventListener(MouseEvent.MOUSE_UP, handleMouseUp);
				content.stage.addEventListener(MouseEvent.MOUSE_MOVE, handleMouseMove);	
			}
		}
		
		private function handleMouseDown(e:MouseEvent):void
		{
			holdY = container.stage.mouseY;
			isHolding = true;
		}
		
		private function handleMouseUp(e:MouseEvent):void
		{
			isHolding = false;
		}
		
		private function handleMouseMove(e:MouseEvent):void
		{
			if (isHolding)
			{
				var currentY:Number = container.stage.mouseY;
				var movementY:Number = currentY - holdY;
				holdY = currentY;
				content.y += movementY;
				if (content.y > maxScrollPosition)
					content.y = maxScrollPosition;
				if (content.y < minScrollPosition)
					content.y = minScrollPosition;	
			}
		}
		
		private function resetCurrentTitle():void
		{
			if (title != null)
				title.visible = false;
		}
		
		private function resetCurrentContent():void
		{
			if (content != null)
			{
				container.removeChild(this.content);
				content.visible = false;
			}
		}
	}
}