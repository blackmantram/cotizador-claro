package com.pixo.cotizadorclaro.view.component
{
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.service.CostResults;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class Details extends Sprite
	{
		private var close:Sprite;
		
		private var rawPrice:TextField;
		
		private var promoPrice:TextField;
		
		private var priceAfterAYear:TextField;
		
		private var yearlySaving:TextField;
		
		private var monthlySaving:TextField;
		
		private var grandTotal:TextField;
		
		private var tvList:TextField;
		
		private var tvCosts:TextField;
		
		private var internetList:TextField;
		
		private var internetCosts:TextField;
		
		private var phoneList:TextField;
		
		private var phoneCosts:TextField;
		
		private var skin:Sprite;
		
		public function Details(skin:Sprite)
		{
			this.skin = skin;
			close = skin.getChildByName("close") as Sprite;
			rawPrice = skin.getChildByName("rawPrice") as TextField;
			promoPrice = skin.getChildByName("promoPrice") as TextField;
			priceAfterAYear = skin.getChildByName("priceAfterAYear") as TextField;
			yearlySaving = skin.getChildByName("yearlySaving") as TextField;
			monthlySaving = skin.getChildByName("monthlySaving") as TextField;
			grandTotal = skin.getChildByName("grandTotal") as TextField;
			tvList = skin.getChildByName("tvList") as TextField;
			tvCosts = skin.getChildByName("tvCosts") as TextField;
			internetList = skin.getChildByName("internetList") as TextField;
			internetCosts = skin.getChildByName("internetCosts") as TextField;
			phoneList = skin.getChildByName("phoneList") as TextField;
			phoneCosts = skin.getChildByName("phoneCosts") as TextField;

			close.addEventListener(MouseEvent.CLICK, handleCloseButtonPressed);
			skin.visible = false;
		}
		
		private function handleCloseButtonPressed(e:MouseEvent):void
		{
			hide();
		}
		
		public function show():void
		{
			skin.visible = true;
		}
		
		public function hide():void
		{
			skin.visible = false;
		}
		
		public function setData(config:Config, cost:CostResults):void
		{
			rawPrice.text = cost.totalPrice+"";
			promoPrice.text = cost.promoPrice+"";
			priceAfterAYear.text = cost.totalPrice+"";
			yearlySaving.text = cost.yearlySaving+"";
			monthlySaving.text = cost.monthlySaving+" pesos mensuales";
			grandTotal.text = cost.promoPrice + cost.additionalsPrice+"";
			tvList.text = config.tvplan;
			tvCosts.text = cost.tvCost+"";
			internetList.text = config.internetplan;
			internetCosts.text = cost.internetCost+"";
			phoneList.text = config.phonelines+"";
			phoneCosts.text = cost.phoneCost+"";
		}
		
		private function fillAdditionalInfo():void
		{
			
		}
	}
}