<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>TalentForge Recruiter | Update Status</title>
   <meta charset="UTF-8">
   <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
  background-color: lightpink;
}


  .card {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      max-width: 400px;
      margin: auto;
      text-align: center;
      font-family: Arial, sans-serif;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
    }

    h5 {
      color: red;
    }

    form {
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    input[type="text"] {

      width: 100%;
      padding: 8px;
      
      box-sizing: border-box;
      border-radius: 4px;
      
      
    }

    label {
      margin-top: 10px;
      color: #333; /* Dark color */
      font-size: 16px;
    }

    select,
    textarea {
      width: 100%;
      padding: 8px;
      margin: 6px 0;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    input[type="submit"] {
      background-color: #4caf50;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
    
     .navlogo{
       margin-top: 19px;
       }
	</style>
</head>
<body>
<nav>
  <div class="wrapper">
   <p > <a href="adminhome"> <img src="/images/greennavlogo.png" class="navlogo" width="180px" height="80" /></a></p>
   
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
   <div class="card">
    <h2 align="center" style="color:green">Update Application Status</h2>
    
    <form action="addapplicationstatus" method="post">
      <!-- Application Status Combo Box -->
        <label for="applicationStatus">Applicant ID:</label>
      
        <input type="text" name="id" value="${id}"readonly>
        <label for="applicationStatus">Job Title :</label>
        
        <input type="text" name="jobtitle" value="${jobtitle} "readonly>
        
      <label for="applicationStatus">Application Status:</label>
      <select name="applicationStatus" id="applicationStatus" required>
        <option value="" >Set Status</option>
        <option value="Passed first Round">Passed first Round</option>
        <option value="Passed second Round">Passed second Round</option>
        <option value="Passed third Round">Passed third Round</option>
        <option value="Application Rejected">Application Rejected</option>
      </select>

      <label for="comment">Comment:</label>
      <textarea name="comment" id="comment" rows="4" cols="50" required></textarea>

      <!-- Submit Button -->
      <input type="submit" value="Submit">
    </form>
  </div>
<!-- partial -->
</body>
</html>
    