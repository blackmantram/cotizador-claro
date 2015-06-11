package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.model.CostCalculator;
	import com.pixo.cotizadorclaro.service.CostResults;
	
	import flash.display.Sprite;
	import flash.text.TextField;

	public class TvIcons
	{
		private var pvr:Sprite;
		
		private var hd:Sprite;
		
		private var standard:Sprite;
		
		private var hbo:Sprite;
		
		private var miniHBO:Sprite;
		
		private var fox:Sprite;
		
		private var hotpack:Sprite;
		
		private var r15min:Sprite;
		
		private var posX:Number;
		
		private const span:Number = 14.25;
		
		public function TvIcons(skin:Sprite)
		{
			pvr = skin.getChildByName("pvr") as Sprite;
			hd = skin.getChildByName("hd") as Sprite;
			standard = skin.getChildByName("standard") as Sprite;
			hbo = skin.getChildByName("hbo") as Sprite;
			miniHBO = skin.getChildByName("miniHBO") as Sprite;
			fox = skin.getChildByName("fox") as Sprite;
			hotpack = skin.getChildByName("hotpack") as Sprite;
			r15min = skin.getChildByName("r15min") as Sprite;
		}
		
		public function setData(config:Config, costs:CostResults):void
		{
			posX = 0;
			
			pvr.visible = costs.has("pvr");
			getBadgeText(pvr).text = costs.countOf("pvr")+""; 
			adjust(pvr);
			
			hd.visible = costs.has("hd");
			getBadgeText(hd).text = costs.countOf("hd")+""; 
			adjust(hd);
			
			standard.visible = costs.has("standard");
			getBadgeText(standard).text = costs.countOf("standard")+""; 
			adjust(standard);
			
			hbo.visible = config.hbo>0; adjust(hbo);
			miniHBO.visible = config.miniHbo>0; adjust(miniHBO);
			fox.visible = config.fox; adjust(fox);
			hotpack.visible = config.hotPack; adjust(hotpack);
			r15min.visible = config.revista15; adjust(r15min);
		}
		
		private function adjust(sprite:Sprite):void
		{
			if (sprite.visible)
			{
				sprite.x = posX
				posX += sprite.width+span;
			}
		}
		
		private function getBadgeText(sprite:Sprite):TextField
		{
			var badge:Sprite = sprite.getChildByName("badge") as Sprite;
			return badge.getChildByName("text") as TextField;
		}
	}
}