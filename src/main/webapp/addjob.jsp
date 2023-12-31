<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
  <title>TalentForge | Post a Job</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
  <style>
  
  .background-container {
            background-image: url('/images/background.jpg');
             background-size: cover;
        background-position: center;
        background-repeat:space;
        height: 150vh;
        
        justify-content: center;
        align-items: center;
                width: 100%;
            
          
        }
  .container {
    max-width: 600px;
    margin: auto;
}

.registration-section {
    text-align: center;
    padding: 20px;
}

.card {
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
}

.card-body {
    padding: 20px;
}

#registerimage {
    max-width: 100%;
    height: auto;
}

h5 {
    color: red;
}

.card p {
    color: darkblue;
    font-size: 24px;
}

form {
    margin-top: 20px;
}

.form-control {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.btn-primary {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
}

.btn-primary:hover {
    background-color: #0056b3;
}

a {
    text-decoration: none;
    color: #007bff;
}

a:hover {
    text-decoration: underline;
}

.error {
    color: red;
}

@media screen and (max-width: 768px) {
.wrapper .btn{
    display: block;
  }
  .wrapper .nav-links{
    position: fixed;
    height: 100vh;
    width: 100%;
    max-width: 350px;
    top: 0;
    left: -100%;
    background: #242526;
    display: block;
    padding: 50px 10px;
    line-height: 50px;
    overflow-y: auto;
    box-shadow: 0px 15px 15px rgba(0,0,0,0.18);
    transition: all 0.3s ease;
  }
  /* custom scroll bar */
  ::-webkit-scrollbar {
    width: 10px;
  }
  ::-webkit-scrollbar-track {
    background: #242526;
  }
  ::-webkit-scrollbar-thumb {
    background: #3A3B3C;
  }
  #menu-btn:checked ~ .nav-links{
    left: 0%;
  }
  #menu-btn:checked ~ .btn.menu-btn{
    display: none;
  }
  #close-btn:checked ~ .btn.menu-btn{
    display: block;
  }
  .nav-links li{
    margin: 15px 10px;
  }
  .nav-links li a{
    padding: 0 20px;
    display: block;
    font-size: 20px;
  }
  .nav-links .drop-menu{
    position: static;
    opacity: 1;
    top: 65px;
    visibility: visible;
    padding-left: 20px;
    width: 100%;
    max-height: 0px;
    overflow: hidden;
    box-shadow: none;
    transition: all 0.3s ease;
  }
  #showDrop:checked ~ .drop-menu,
  #showMega:checked ~ .mega-box{
    max-height: 100%;
  }
  .nav-links .desktop-item{
    display: none;
  }
  .nav-links .mobile-item{
    display: block;
    color: #f2f2f2;
    font-size: 20px;
    font-weight: 500;
    padding-left: 20px;
    cursor: pointer;
    border-radius: 5px;
    transition: all 0.3s ease;
  }
  .nav-links .mobile-item:hover{
    background: #3A3B3C;
  }
  .drop-menu li{
    margin: 0;
  }
  .drop-menu li a{
    border-radius: 5px;
    font-size: 18px;
  }
  .mega-box{
    position: static;
    top: 65px;
    opacity: 1;
    visibility: visible;
    padding: 0 20px;
    max-height: 0px;
    overflow: hidden;
    transition: all 0.3s ease;
  }
  .mega-box .content{
    box-shadow: none;
    flex-direction: column;
    padding: 20px 20px 0 20px;
  }
  .mega-box .content .row{
    width: 100%;
    margin-bottom: 15px;
    border-top: 1px solid rgba(255,255,255,0.08);
  }
  .mega-box .content .row:nth-child(1),
  .mega-box .content .row:nth-child(2){
    border-top: 0px;
  }
  .content .row .mega-links{
    border-left: 0px;
    padding-left: 15px;
  }
  .row .mega-links li{
    margin: 0;
  }
  .content .row header{
    font-size: 19px;
  }

    
    
    .container {
    width: 600px;
    margin: auto;
}

.registration-section {
    text-align: center;
    padding: 20px;
}

.card {
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
}

.card-body {
    padding: 50px;
}

#registerimage {
    max-width: 100%;
    height: auto;
}

h5 {
    color: red;
}

.card p {
    color: darkblue;
    font-size: 24px;
}

form {
    margin-top: 20px;
}

.form-control {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.btn-primary {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
}

.btn-primary:hover {
    background-color: #0056b3;
}

a {
    text-decoration: none;
    color: #007bff;
}

a:hover {
    text-decoration: underline;
}

.error {
    color: red;
}
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

          <br>       <br>       <br>       <br>	
<div class="container">
    <div class="registration-section">
        <img id="registerimage" alt="" src="images/register1.png">

        <div class="card">
            <div class="card-body">
                <h5 align="center" style="color:red">${msg}</h5>
       <p style="color: darkblue; font-size: 24px;"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆 𝑷𝒐𝒔𝒕 𝒏𝒆𝒘 𝑱𝒐𝒃<img src="/images/search.png" width="30px" height="30" /></p>
       
     

       
        <form action="addjob" method="post" id="passwordForm" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="email">Job Title:</label>
                <input type="text" class="form-control"  name="jobtitle" placeholder="Enter Job Title" required>
            </div>
        
            <div class="mb-3">
                <label for="last_name">Job Location:</label>
                <input type="text" class="form-control" name="location" placeholder="Enter Job Location" required>
            </div>
            <div class="mb-3">
                <label for="phone_number">Skills Required:</label>
                <input type="text" class="form-control" id="phone_number" name="skills"
                    placeholder="Enter Skills Required" required>
            </div>
            <div class="mb-3">
                <label for="phone_number">Date of Posting:</label>
                <input type="date" class="form-control" id="dateposted" name="dateposted"
                    placeholder="Date of Posting" required>
            </div>
            <div class="mb-3">
                <label for="address">Job Description:</label>
                <textarea class="form-control" id="address" name="description" rows="3"
                    placeholder="Enter Job Description" required></textarea>
            </div>
            <div class="mb-3">
            <label for="password1">Salary:</label>
            <input type="number" class="form-control"  name="salary"
                placeholder="Enter Salary" required>
        </div>
          <div class="mb-3">
            <label for="password1">Company name:</label>
            <input type="text" class="form-control" value="${rcompanynmae}" name="companyname" readonly
                required>
        </div>
         <div class="mb-3">
            <label for="password1">Company Logo:</label>
            <input type="file" class="form-control"  name="companyimage"
                required>
        </div>
       
      
           
             
        
            <button type="submit" class="btn btn-primary">Post Job</button>
        </form>
<!-- partial -->
  
</body>
</html>
    