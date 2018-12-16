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
@Table(name="subject")
public class SubjectBean{	
	
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Size(min=2, max=30)
	@NotEmpty
	@Column
	private String subjectName;
	
	
	
	@NotNull
	@Column
	private Long subjectCode;

	
	
	public Long getId() {
		return id;
	}
	
	
	
	public void setId(Long id) {
		this.id = id;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public Long getSubjectCode() {
		return subjectCode;
	}
	public void setSubjectCode(Long subjectCode) {
		this.subjectCode = subjectCode;
	}

}
