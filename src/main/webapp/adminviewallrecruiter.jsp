<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
  <title>All Recruiters</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
<style>

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
	background-color: skyblue;
	color: black;
}

.btn {
	 display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  background-color: lightgreen;
}
.btnr {
	 display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  background-color: #D96060;
}

</style>
</head>
<body>
<nav>
  <div class="wrapper">
    <div class="logo"><p style="color: white; font-size: 24px;"> <a href="adminhome"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆</a> <img src="/images/search.png" width="30px" height="30" /></p>
</div>
    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="adminhome">Home</a></li>
      <li><a href="viewallapplicants">View All Applicants</a></li>
            <li><a href="viewallrecruiters">View All Companies</a></li>
       <li><a href="adminviewalljobs">VIEW ALL JOBS</a></li>
     
      
      <li><a href="admin">Logout</a></li>
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>

<br>
<br>
<br>
<br>
<br>
 <h5 align="center" style="color:red">${message}</h5>
 
  <p align="center" style="font-size: 34px;font-weight: bold; color: darkblue" >View All Recruiters</p>
 <br>
 <table id="employee">
			<tr bgcolor="darkblue" style="color: white">
				<th>Recruiter ID</th>
				<th>Company Name</th>
				<th>Email-📧</th>
				<th>Contact-📞</th>
				<th>Address</th>
				<th>Status</th>
				<th>Accept</th>
				<th>Reject</th>
								
				
			</tr>
			<c:forEach items="${recruiters}" var="rec">
				<tr>
					<td><c:out value="${rec.id}" /></td>
					<td><c:out value="${rec.companyname}" /></td>
					<td><c:out value="${rec.email}" /></td>
					
					</td>
					<td><c:out value="${rec.contactno}" /></td>
					
					<td><c:out value="${rec.address}" /></td>
					<td><c:out value="${rec.loginstatus}" /></td>
					<td><a href='<c:url value="setstatusacceptanceordeclined?id=${rec.id}&status=true"></c:url>'><button class="btn"><h3>Accept</h3></button></a></td>
					<td><a href='<c:url value="setstatusacceptanceordeclined?id=${rec.id}&status=false"></c:url>'><button class="btnr"><h3>Reject</h3></button></a>
					</td>				
					</tr>
			</c:forEach>
		</table>
 
 
</body>
</html>
    