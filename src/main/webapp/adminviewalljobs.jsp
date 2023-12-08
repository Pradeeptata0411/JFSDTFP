<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
  <title>TalentForge | Admin View All Jobs</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/adminstyle.css">
<style>

.background-container {
            background-image: url('/images/recruiter.png');
             background-size: cover;
		    background-position: center;
		    background-repeat:no-reapt;
		   
            
          
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
  padding: 5px 20px;
  font-size: 14px;
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
#jobSalaryForm {
            display: flex;
            flex-direction: row;
            align-items: center;
            text-align: center;
            margin-left: 410px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

     select {
            width: 200px;
            padding: 10px;
            border-radius:10px;
            
            margin-bottom: 16px;
        }

        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer; 
            margin-left: 10px;
            margin-top: -18px;
        }

        button:hover {
            background-color: #45a049;
        }

		
       .navlogo{
       margin-top: 19px;
       }
       
       
       #company{
       margin-top:10px;
       }
       #salary{
       margin-top:10px;
       }
       
        #search{
       margin-top:-9px;
       }
       
</style>
</head>
<body>
<nav>
  <div class="wrapper">
      <p > <a href="adminhome"> <img src="/images/adminnavlogo.jpg" class="navlogo"  width="180px" height="80" /></a></p>
    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="adminhome"><i class="fa fa-home">  HOME</i></a></li> 
      <li><a href="viewallapplicants"><i class="fa fa-eye" > ALL APPLICANTS</a></i></li>
      <li><a href="viewallrecruiters"><i class="fa fa-eye" > ALL COMPANIES</a></i></li>
      <li><a href="adminviewalljobs"><i class="fa fa-list-alt""> ALL JOBS</i></a></li>
       <li><a href="viewqueries"><i class="fa fa-question-circle"></i>&nbsp;QUERIES</a></li>
      
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
  
  <br>
  <form id="jobSalaryForm" method="get" action="adminsearching">
    <label for="jobTitle">Company:&nbsp;&nbsp;</label>
			<select id="company" name="companyname" required>
			    <option value="">---Select An Option---</option>
			    <c:forEach var="companyName" items="${companyNamesSet}">
			        <option value="${companyName}">${companyName}</option>
			    </c:forEach>
			</select>


        <label for="salary">&nbsp;&nbsp;&nbsp;Salary:&nbsp;&nbsp;</label>
        <select id="salary" name="salary" required>
            <option value="">---Select An Option---</option>
            <!-- Use JSTL to dynamically populate salary options from the controller -->
                <option value="100000">>=100000</option>
                <option value="200000">>=200000</option>
                <option value="500000">>=500000</option>
                <option value="800000">>=800000</option>
                <option value="1000000">>=1000000</option>
                <option value="1500000">>=1500000</option>
                        </select>
        <button type="submit" id="search">Search</button>
    </form>
  <br>
 <br>
 <table id="employee">
			<tr bgcolor="darkblue" style="color: white">
			    <th>ID's</th>
			    <th>Company Name</th>
			    
				<th>Job Role</th>
				<th>Skill</th>
				<th>Salary</th>
				<th>Action</th>
				
			</tr>
			<c:forEach items="${jobslist}" var="job">
				<tr>
									<td><c:out value="${job.id}" /></td>
									<td><i style="font-family:fantasy; font-size: 25px"><c:out value="${job.companyname}" /></i></td>
					<td><c:out value="${job.jobtitle}" /></td>
					
					
					</td>
					<td><c:out value="${job.skills}" /></td>
				<td><c:out value="${job.salary}" /></td>
					<td><a href='<c:url value="adminviewjobsbyid?id=${job.id}"></c:url>'>
                        <button class="btn" ><i class="fas fa-eye"></i> View</button>
                    </a></td>
					</td>				
					</tr>
			</c:forEach>
		</table>
		<br>
		<br>
		<br>
  <script>
        function submitForm() {
            // Get selected values
            var jobTitle = document.getElementById("jobTitle").value;
            var salary = document.getElementById("salary").value;

            // You can perform further actions here, such as sending the data to a server
            // For simplicity, we'll just log the values for now
            console.log("Selected Job Title: " + jobTitle);
            console.log("Selected Salary: $" + salary);
        }
    </script>
 
</body>
</html>
    