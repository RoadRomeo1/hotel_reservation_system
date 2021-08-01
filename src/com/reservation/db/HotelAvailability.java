package com.reservation.db;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.reservation.GuestData;
import com.reservation.UserData;


public class HotelAvailability {
	
	//step1: load config files...
	private static SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(UserData.class)
			.buildSessionFactory();
	
	
	public static boolean CheckAvailability(Calendar theDate, String city, String hotel) {
		
		//step2: get current session...
		 Session session = factory.getCurrentSession();
		
		
		boolean res = false;
		
		try {
		
		//step3: begin transaction...
		session.beginTransaction();
		
		//step4: get the data from database...
		
		String date = theDate.get(Calendar.YEAR) + "-" + (theDate.get(Calendar.MONTH) + 1) + "-" + theDate
				.get(Calendar.DATE);
		
		
		List<UserData> list = session.createQuery("from UserData where date='" + date + "' and city='" +  city + "' and hotel='" + hotel + "'").getResultList();
		
		
		//step5: checking that data is arrived or not...
		for(UserData data: list) {
			if(data == null) {
			}
			else{
				
				res = true;
			}
		}
		
		//step6: commiting the transaction...
		session.getTransaction().commit();
		
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			//closing connection...
			session.close();
		}
		return res;
	}
}
