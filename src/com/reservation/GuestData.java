package com.reservation;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name = "guest")
public class GuestData {


	@Id
	@Column(name = "email")
	private String email;

	@Column(name = "name")
	@NotNull(message = "Name is required")
	@Size(min = 1, message = "At least 1 one character maximum 50", max = 50)
	private String name;

	@NotNull(message = "Age is required")
	@Size(min = 1, message = "Minimum 1 and maximum 100", max = 100)
	@Column(name = "age")
	private int age;

	@NotNull(message = "Contact is required")
	@Pattern(regexp = "^[0-9]{10}", message = "contact can be of 10 digits(only indian no is allowed)")
	@Column(name = "contact")
	private long contact;

	@NotNull(message = "Gender is required")
	@Column(name = "gender")
	private String gender;

	@Column(name = "hotel")
	private String hotel;

	@Column(name = "city")
	private String city;

	@Column(name = "date")
	private String date;

	public GuestData(String name, String email, int age, long contact, String gender, String hotel, String city,
			String date) {
		super();
		this.name = name;
		this.email = email;
		this.age = age;
		this.contact = contact;
		this.gender = gender;
		this.hotel = hotel;
		this.city = city;
		this.date = date;
	}

	public GuestData() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public long getContact() {
		return contact;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHotel() {
		return hotel;
	}

	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "GuestData [name=" + name + ", email=" + email + ", age=" + age + ", contact=" + contact + ", gender="
				+ gender + ", hotel=" + hotel + ", city=" + city + ", date=" + date + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + age;
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime * result + (int) (contact ^ (contact >>> 32));
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((gender == null) ? 0 : gender.hashCode());
		result = prime * result + ((hotel == null) ? 0 : hotel.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GuestData other = (GuestData) obj;
		if (age != other.age)
			return false;
		if (city == null) {
			if (other.city != null)
				return false;
		} else if (!city.equals(other.city))
			return false;
		if (contact != other.contact)
			return false;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (gender == null) {
			if (other.gender != null)
				return false;
		} else if (!gender.equals(other.gender))
			return false;
		if (hotel == null) {
			if (other.hotel != null)
				return false;
		} else if (!hotel.equals(other.hotel))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}
}
