package com.pixo.cotizadorclaro.view
{	
	import com.pixo.cotizadorclaro.controller.events.AppEvent;
	import com.pixo.cotizadorclaro.controller.events.NavEvent;
	import com.pixo.cotizadorclaro.model.Config;
	import com.pixo.cotizadorclaro.service.IGetCitiesService;
	import com.pixo.cotizadorclaro.service.event.GetCitiesEvent;
	import com.pixo.cotizadorclaro.view.component.dropdown.DropDownEvent;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class CityViewMediator extends Mediator
	{
		[Inject]
		public var view:CityView;
		
		[Inject]
		public var config:Config;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.nextButton, MouseEvent.CLICK, handleNextButton);
			eventMap.mapListener(eventDispatcher, GetCitiesEvent.CITIES_LOADED, handleCitiesObtained);
			eventMap.mapListener(view.citySelector, DropDownEvent.ITEM_SELECTED, handleCitySelected);
			dispatch(new AppEvent(AppEvent.FIRST_TIME_CITIES));
		}
		
		private function handleNextButton(e:MouseEvent):void
		{
			dispatch(new NavEvent(NavEvent.NEXT));
		}
		
		private function handleCitiesObtained(e:GetCitiesEvent):void
		{
			view.citySelector.setData(e.cities);
		}
		
		private function handleCitySelected(e:DropDownEvent):void
		{
			config.city = e.item.itemName;
		}
	}
}