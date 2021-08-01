package com.reservation;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.reservation.db.BookGuest;
import com.reservation.db.HotelAvailability;

@Controller
public class Booking {

	@Value("#{hotel}")
	private Map<String, String> hotel;
	@Value("#{city}")
	private Map<String, String> city;

	@RequestMapping("/checkBookings")
	public String FetchBookings(@ModelAttribute("data") UserData data, Model model) throws ParseException {

		String dest = "hotel_selector";

		// logic for date format conversion
		Calendar theDate = DateUtils.parseDate(data.getDate());
		String date = theDate.get(Calendar.DAY_OF_MONTH) + "-" + (theDate.get(Calendar.MONTH) + 1) + "-"
				+ theDate.get(Calendar.YEAR);

		data.setDate(date);

		// business logic for validating hotel is available or not comes here...

		boolean status = HotelAvailability.CheckAvailability(theDate, data.getCity(), data.getHotel());

		model.addAttribute("data", data);

		if (status == false) {
			dest = "booking_found";
		} else {
			dest = "booking_available";
		}

		return dest;
	}

	@RequestMapping("/confirmation")
	public String ConfirmBooking(@ModelAttribute("data") UserData data, Model model) {

		GuestData guestData = new GuestData();


		guestData.setHotel(data.getHotel());
		guestData.setCity(data.getCity());
		guestData.setDate(data.getDate());

		model.addAttribute("guestData", guestData);

		return "guest";
	}

	@RequestMapping("/bookGuest")
	public String bookGuest(@ModelAttribute("guestData") GuestData guestData, Model model, BindingResult res) {

		String dest = "guest";


		boolean status = false;


		if (res.hasErrors()) {

		} else {
			status = BookGuest.SaveGuest(guestData);
		}
		if (status) {
			dest = "booking_positive";
		}

		model.addAttribute("guestData", guestData);
		return dest;
	}

}
