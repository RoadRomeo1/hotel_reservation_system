package com.reservation.db;

import java.util.Calendar;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.reservation.DateUtils;
import com.reservation.GuestData;

public class BookGuest {

	private static SessionFactory factory = new Configuration().configure("hibernate.cfg.xml")
			.addAnnotatedClass(GuestData.class).buildSessionFactory();

	public static boolean SaveGuest(GuestData guestData) {

		Session session = factory.getCurrentSession();

		boolean status = false;

		try {

			session.beginTransaction();

			GuestData data = new GuestData(guestData.getName(), guestData.getEmail(), guestData.getAge(),
					guestData.getContact(), guestData.getGender(), guestData.getHotel(), guestData.getCity(),
					guestData.getDate());

			session.save(data);

			session.getTransaction().commit();

			status = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}
}
