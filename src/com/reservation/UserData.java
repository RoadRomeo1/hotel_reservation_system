package com.reservation;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hotel_desc")
public class UserData {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(name = "city")
	private String city;
	@Column(name = "date")
	private String date;
	@Column(name = "hotel")
	private String hotel;
	@Column(name = "room_type")
	private String suite_type;
	@Column(name = "price")
	private int price;
	@Column(name = "gst")
	private int gst;

	public UserData() {
	}

	public UserData(String date, String city, String hotel, String suite_type) {
		super();
		this.date = date;
		this.city = city;
		this.hotel = hotel;
		this.suite_type = suite_type;
	}

	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getHotel() {
		return hotel;
	}

	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getSuite_type() {
		return suite_type;
	}

	public void setSuite_type(String suite_type) {
		this.suite_type = suite_type;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getGst() {
		return gst;
	}

	public void setGst(int gst) {
		this.gst = gst;
	}

}
