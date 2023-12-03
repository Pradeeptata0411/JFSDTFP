package com.klef.talentforge.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "job_table")
public class Job 
{   
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "job_title",length = 50,nullable = false)
	private String jobtitle;
	@Column(name = "job_location",length = 300,nullable = false)
	private String location;
	@Column(name = "job_skills",length = 500,nullable = false)
	private String skills;
	@Column(name = "job_description",length = 500,nullable = false)
	private String description;
	@Column(name = "job_salary",nullable = false)
	private int salary;
	@Column(name="comapany_image")
	  private Blob image;
	
	@Column(name="company_name")
	private String companyname;
	
	@Column(name="job_posteddate", length = 10,nullable = false)
	  private String posteddate;

	  
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getJobtitle() {
		return jobtitle;
	}
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getPosteddate() {
		return posteddate;
	}
	public void setPosteddate(String posteddate) {
		this.posteddate = posteddate;
	}
	
	
	
	

}
