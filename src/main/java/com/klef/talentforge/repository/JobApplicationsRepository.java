package com.klef.talentforge.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.talentforge.model.JobApplications;

@Repository
public interface JobApplicationsRepository extends JpaRepository<JobApplications, Integer>{

	
	 @Query("from JobApplications where email=?1 and jobtitle=?2 and companyname=?3")
	 public JobApplications checkJobApplication(String email,String jobtitle,String companyname);
	 
	 @Query("from JobApplications where id=?1")
	   public List<JobApplications> ViewMyJobApplications(int id);

	 
	 @Query("from JobApplications where companyname=?1")
	  public List<JobApplications> viewalljobapplicationsByCompany(String companyname);
	  
	  @Query("select j from JobApplications j where j.id=?1 and j.jobtitle=?2")
	  public JobApplications viewJobApplicationBYID(int id,String jobtitle);
	  
	
	  
	 
}
