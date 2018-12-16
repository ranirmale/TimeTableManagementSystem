package com.ttmgmt.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;



@Entity
@Table
public class User {

	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int userId;
	
	@Size(min=2, max=30)
	@NotEmpty
	@Column
	private String firstName;
	
	@Size(min=2, max=30)
	@NotEmpty
	@Column
	private String lastName;
	
	@NotNull
	@Column
	private Long mobileNumber;
	
	@NotEmpty
	@Column
	private String mailId;
	
	@NotEmpty
	@Column
	private String bDay;
	
	@NotEmpty
	@Column
	private String bMonth;
	
	@NotEmpty
	@Column
	private String bYear;
		
	@NotEmpty
	@Column
	private String gender;
	
	@NotEmpty
	@Column
	private String password;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	
	public Long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(Long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getMailId() {
		return mailId;
	}

	public void setMailId(String mailId) {
		this.mailId = mailId;
	}


	public String getbDay() {
		return bDay;
	}

	public void setbDay(String bDay) {
		this.bDay = bDay;
	}

	public String getbMonth() {
		return bMonth;
	}

	public void setbMonth(String bMonth) {
		this.bMonth = bMonth;
	}

	public String getbYear() {
		return bYear;
	}

	public void setbYear(String bYear) {
		this.bYear = bYear;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
