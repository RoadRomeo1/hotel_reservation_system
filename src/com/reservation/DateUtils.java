package com.reservation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateUtils {
	private static SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

	// this method to be called in any class to convert date string to above given
	// format.

	public static Calendar parseDate(String dateStr) throws ParseException {
		Date theDate = format.parse(dateStr);
		Calendar calc = GregorianCalendar.getInstance();
		calc.setTime(theDate);
		String date = calc.get(Calendar.DAY_OF_MONTH) + "-" + (calc.get(Calendar.MONTH) + 1)
				+ "-" + calc.get(Calendar.YEAR);
		return calc;
	}

	public static String formatDate(Date theDate) {
		String result = null;

		if (theDate != null) {
			result = format.format(theDate);
		}
		return result;
	}

	public static void convert(String theDate) throws ParseException {
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(theDate);
		System.out.println("Date: " + date);
	}

}
