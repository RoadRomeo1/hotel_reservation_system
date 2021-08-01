package com.reservation;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Welcome {

	@Value("#{hotel}")
	private Map<String, String> hotel;
	@Value("#{city}")
	private Map<String, String> city;

	
	@RequestMapping("/")
	public String getWelcome(Model model) {
		return getWelcomeData(model);
	}

	@RequestMapping("/hotelSelector")
	public String getWelcomeData(Model model) {
		UserData data = new UserData();
		
		model.addAttribute("data", data);
		model.addAttribute("hotel_name", hotel);
		model.addAttribute("city", city);
		
		return "hotel_selector";
	}

}
