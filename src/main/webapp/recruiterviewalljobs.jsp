<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>TalentForge Recruiter Home</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
	<style>
	
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
	background-color: skyblue;
	color: black;
}

.btn {
	background-color: skyblue;
	padding: 5px 16px;
	font-size: 12px;
	cursor: pointer;
}
	</style>
</head>
<body>
<nav>
  <div class="wrapper">
    <div class="logo"><p style="color: white; font-size: 24px;"> <a href="recruiterhome"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆</a> <img src="/images/search.png" width="30px" height="30" /></p>
</div>
    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="recruiterhome">Home</a></li>
      <li><a href="postajob">Post a Job</a></li>
      <li>
        <a href="#" class="desktop-item">Actions</a>
        <input type="checkbox" id="showDrop">
        <label for="showDrop" class="mobile-item">Dropdown Menu</label>
        <ul class="drop-menu">
          <li><a href="recruiterviewjobs">VIEW ALL JOBS</a></li>
          <li><a href="viewalljobapplications">JOB APPLICATIONS</a></li>
        </ul>
      </li>
      <li><a href="#">Logout</a></li>
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>
<br>
<br>
<br>
<br>
<br>
<table id="employee">
			<tr bgcolor="black" style="color: black">
				<th>Job ID</th>
				<th>Job Title</th>
				<th>Company</th>
				<th>Description</th>
				<th>Salary</th>
				
				<th>Action</th>
				
				
			</tr>
			<c:forEach items="${jobsbyname}" var="job">
				<tr>
					<td><c:out value="${job.id}" /></td>
					<td><c:out value="${job.jobtitle}" /></td>
				    <td><img src='displaycompanyimage?id=${job.id}' alt="Company Logo" height="45px" width="80px"></td>
					
					<td><c:out value="${job.description}" />
					</td>
					<td><c:out value="${job.salary}" /></td>
					<td><a href="deletejob?id=${job.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
<!-- partial -->
</body>
</html>
    