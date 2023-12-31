<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
  <title>TalentForge | Recruiter Job Applications</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
	<style>
	
	.background-container {
            background-image: url('/images/background.jpg');
             background-size: cover;
        background-position: center;
        background-repeat:space;
        height: 100vh;
        
        justify-content: center;
        align-items: center;
                width: 100%;
            
          
        }
	  .button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  background-color: sky	blue;
}
	
#employee {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#employee td, #employee th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#employee tr:nth-child(even) {
	background-color: white;
}

#employee tr:hover {
	background-color: #ddd;
}

#employee th {
	padding-top: 12px;
	padding-bottom: 12px;
	background-color: #ecf2e2;
	color: black;
}

.btn {
	 display: inline-block;
  padding: 16px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
 
}

.we {
    cursor: pointer;
    color: #fff; /* Set the initial text color */
    background-color: #007bff; /* Set the initial background color */
    padding: 10px 10px; /* Add padding for better appearance */
    display: inline-block; /* Make it a block to allow setting width and height */
    text-decoration: none; /* Remove underline from the text */
    border-radius: 4px; /* Add rounded corners for a button-like appearance */
  }
.btn.view-btn {
  display: inline-block;
  background-color: #3498db; /* Blue color */
  color: #fff; /* White color */
  padding: 18px 26px;
  text-decoration: none; /* Remove underline from the link */
  border-radius: 4px;
  cursor: pointer;
}

.btn.view-btn:hover {
  background-color: #2980b9; /* Darker blue color on hover */
}
  /* Change styles on hover */
  .we:hover {
    background-color: #0056b3; /* Change background color on hover */
  }
  
  .weview {
    cursor: pointer;
    color: black; /* Set the initial text color */
    background-color: #E6D894; /* Set the initial background color */
    padding: 13px 10px; /* Add padding for better appearance */
    display: inline-block; /* Make it a block to allow setting width and height */
    text-decoration: none; /* Remove underline from the text */
    border-radius: 4px; /* Add rounded corners for a button-like appearance */
  }


.weview:hover {
    background-color: #F4BE22; /* Change background color on hover */
  }
  
   .navlogo{
       margin-top: 19px;
       }
	</style>
</head>
<body>
<nav>
  <div class="wrapper">
    <p > <a href="recruiterhome"> <img src="/images/greennavlogo.png" class="navlogo" width="180px" height="80" /></a></p>
   
    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
       <li><a href="recruiterhome"><i class="fa fa-home">  HOME</i></a></li> 
      <li><a href="postajob"><i class="fa fa-suitcase">  POST A JOB</i></a></li>
     <li><a href="recruiterviewjobs"><i class="fa fa-eye" > VIEW ALL JOBS</i></a></li>
      <li><a href="viewalljobapplications"><i class="fa fa-tasks">&nbsp; JOB APPLICATIONS</i> </a></li>
      <li><a href="companylogin"><i class="fa fa-power-off"></i> LOGOUT</a></li>
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>
<div class="background-container">

<br>
<br>
<br>
<br>
<br>
 <h5 align="center" style="color:red">${message}</h5>
  
<table id="employee">
			<tr bgcolor="darkblue" style="color: white">
				<th>Application ID</th>
				<th>Applicant ID</th>
				<th>Company Name</th>
				<th>Job Title</th>
				<th>Email</th>
				<th>Experience</th>
				<th>Contact No</th>
				<th>Resume</th>
				<th>Update Status</th>
				<th>View Status</th>
				
			</tr>
			<c:forEach items="${jobslist}" var="job">
				<tr>
					<td><c:out value="${job.applicationid}" /></td>
					
					<td><c:out value="${job.id}" /></td>
					<td><c:out value="${job.companyname}" /></td>
					<td><c:out value="${job.jobtitle}" />
					</td>
					<td><c:out value="${job.email}" /></td>
					
					<td><c:out value="${job.experience}" /></td>
					<td><c:out value="${job.contactno}" /></td>
					<td><a href="/download/${job.applicationid}/${job.jobtitle}"><button class="btn fa fa-download ">.Download Resume</button></a>

					</td>				
					<td><a href="updateapplicationstatus?id=${job.id}&jobtitle=${job.jobtitle}" class="we"> <i class="fas fa-edit">Update Status</i></a></td>
				<td>
					    <a href="recruitergetApplicationStatus?id=${job.id}&jobtitle=${job.jobtitle}&jobid=${job.id}" class="weview fa fa-eye">View Status</a>
					  </td>
				</tr>
			</c:forEach>
		</table>
<!-- partial -->
</body>
</html>
    