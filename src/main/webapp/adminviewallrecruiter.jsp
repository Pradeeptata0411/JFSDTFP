<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
  <title>TalentForge | Admin All Recruiters</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/adminstyle.css">
<style>


.background-container {
            background-image: url('/images/recruiter.png');
             background-size: cover;
		    background-position: center;
		    background-repeat:space;
		    height: 100vh;
		    display: flex;
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
.navlogo{
       margin-top: 19px;
       }
</style>
</head>
<body>
<nav>
  <div class="wrapper">
      <p > <a href="adminhome"> <img src="/images/adminnavlogo.jpg" class="navlogo" width="180px" height="80" /></a></p>
    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="adminhome"><i class="fa fa-home">  HOME</i></a></li> 
      <li><a href="viewallapplicants"><i class="fa fa-eye" > ALL APPLICANTS</a></i></li>
      <li><a href="viewallrecruiters"><i class="fa fa-eye" > ALL COMPANIES</a></i></li>
      <li><a href="adminviewalljobs"><i class="fa fa-list-alt""> ALL JOBS</i></a></li>
       <li><a href="viewqueries"><i class="fa fa-question-circle"></i>&nbsp;Queries</a></li>
      
         <li><a href="admin"><i class="fas fa-sign-in-alt" > &nbsp;LOGOUT</i></a></li>
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
    