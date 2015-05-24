package com.pixo.cotizadorclaro.view.base
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.utils.describeType;
	import flash.utils.getDefinitionByName;
	
	public class SkinnableView extends Sprite
	{
		protected function get skin():Sprite
		{
			throw new Error("skin getter is abstract and should be implemented");
		}
		
		public function SkinnableView()
		{
			loadSkin();
		}
		
		private function loadSkin():void
		{
			var _skin:Sprite = skin;
			var skinnableProperties:Array = getSkinnableProperties();
			for each(var skinnable:Object in skinnableProperties)
				this[skinnable.name] = _skin.getChildByName(skinnable.name) as skinnable.type;
			addChild(_skin);
		}
		
		private function getSkinnableProperties():Array
		{
			var description:XML = describeType(Object(this).constructor);
			var vars:XMLList = description.factory.variable;
			var properties:Array = [];
			for each(var variable:XML in vars)
				for each(var meta:XML in variable.metadata)
					if (meta.@name == "Skinnable")
						properties.push({name:variable.@name, type:getDefinitionByName(variable.@type) as Class});
			return properties;
		}
	}
}