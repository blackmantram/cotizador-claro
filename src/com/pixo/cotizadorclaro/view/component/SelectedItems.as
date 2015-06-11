package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.service.CostResults;
	
	import flash.display.Sprite;
	import flash.text.TextField;

	public class SelectedItems
	{
		private var tvIcons:TvIcons;
		private var internet:Sprite;
		private var phoneIcons:PhoneIcons;
		
		public function SelectedItems(skin:Sprite)
		{
			tvIcons = new TvIcons(skin.getChildByName("tvIcons") as Sprite);
			internet = skin.getChildByName("internet") as Sprite;
			phoneIcons = new PhoneIcons(skin.getChildByName("phoneIcons") as Sprite);
		}
		
		private function init():void
		{
			internet.visible = false;
		}
		
		public function setData(config:Config, costs:CostResults):void
		{
			init();
			tvIcons.setData(config, costs);
			if (config.internetplan != "")
			{
				internet.visible = true;
				(internet.getChildByName("text") as TextField).text = config.internetplan;	
			}
			phoneIcons.setData(config);
		}
	}
}