<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TalentForge</title>
   <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>
  
<link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
  <style>
  
  
  #searchInput {
 max-width: 160px;
  box-sizing: border-box;
  margin: 0;
  padding: 10px; /* Add padding for better spacing */
  border: 1px solid #ccc; /* Add a border for a defined boundary */
  border-radius: 5px; /* Add rounded corners */
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow for depth */
  font-size: 26px; /* Set the font size */
  transition: all 0.3s ease; /* Add a smooth transition effect */
}

#searchInput::placeholder {
  color: #999;
  transition: all 0.3s ease;
}

#searchInput.typing::placeholder,
#searchInput:focus::placeholder {
  opacity: 0;
  transform: translateX(-100%);
}
  
  .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

#toggle-btn {
  display: none; /* Initially hide the toggle button */
}

.title {
  color: grey;
  font-size: 18px;
}
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      display: flex;
      height: 100vh;
    }

    #container {
      display: flex;
      width: 100%;
    }
    .form-control option {
    background-color: #fff; /* Background color */
    color: #333; /* Text color */
    font-size: 14px; /* Text size */
}

/* Style for the selected option */
.form-control option:checked {
    background-color: #f0f0f0; /* Background color when selected */
    font-weight: bold; /* Bold text when selected */
}

    #left-half {
      flex: 0 0 80%;
      overflow-y: auto;
      padding: 20px;
      box-sizing: border-box;
      display: flex;
      flex-direction: column;
      gap: 20px;
      max-height: 100vh; /* Set a max height to enable scrolling */
    }

    #search-bar {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      background-color: white;
      z-index: 1000;
      display: flex;
      align-items: center;
      padding: 10px;
      border-bottom: 1px solid #ccc;
    }

    #search-bar input {
      flex: 1;
      padding: 8px;
      font-size: 16px;
      width:80px;
    }

    #search-bar button {
      padding: 8px 16px;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .job-card {
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 8px;
      display: flex;
      flex-direction: column;
      gap: 2px;	
    }

    .job-card img {
      max-width: 200px;
      max-height: 100px;
      border-radius: 0%;
    }

    .apply-btn {
      background-color: darkblue;
      color: #fff;
      padding: 8px 12px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    #right-half {
      flex: 0 0 20%;
      background-color: #F9F9FB;
      color: blue;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 20px;
      box-sizing: border-box;
    }


  
   #profileimage {
        width: 100%;
        height: 200px;
        border-radius: 50%; /* This sets the border-radius to 50% to make it a circle. You can adjust this value as needed. */
    }
    
    nav {
      display: flex;
      flex-direction: column;
      gap: 20px;
      margin-top: auto; /* Push the nav items to the bottom */
    }

    nav a {
      color: black;
      text-decoration: none;
      font-weight: bold;
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
   
}

a:hover {
    text-decoration: underline;
}

.error {
    color: red;
}


@media only screen and (max-width: 768px) {

.verification-container {
      display: flex;

      align-items: center;
    }

    .verified-tick {
      width: 40px;
      height: 40px;
      background-color: #2ecc71; /* Green color */
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-right: 10px;
    }

    .tick-icon {
 
      width: 25px;
      height: 25px;
      fill: #fff; /* White color */
    }

    .verification-text {
      font-size: 18px;
      color: #333; /* Dark color */
      line-height: 40px; /* Adjust line-height to match the height of the circle */
    }
  .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      display: flex;
      height: 100vh;
    }

    #container {
      display: flex;
      width: 100%;
    }

    #left-half {
      flex: 0 0 100%;
      overflow-y: auto;
      padding: 20px;
      box-sizing: border-box;
      display: flex;
      flex-direction: column;
      gap: 20px;
      max-height: 100vh; /* Set a max height to enable scrolling */
    }

    #search-bar {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      background-color: white;
      z-index: 1000;
      display: flex;
      align-items: center;
      padding: 10px;
      border-bottom: 1px solid #ccc;
    }

    #search-bar input {
      flex: 1;
      padding: 8px;
      font-size: 16px;
      width:80px;
    }

    #search-bar button {
      padding: 8px 20px;
       top: -1px;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .job-card {
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 8px;
      display: flex;
      flex-direction: column;
      gap: 2px;	
    }

    .job-card img {
      max-width: 200px;
      max-height: 100px;
      border-radius: 0%;
    }



 #right-half {
    position: fixed;
    top: 0;
    right: -100%;
    height: 100%;
    width: 100%;
    background-color: #F9F9FB;
    z-index: 1;
    overflow-x: hidden;
    transition: right 0.3s ease;
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  #right-half.show {
    right: 0;
  }

  #toggle-btn {
    display: block;
    position: fixed;
   margin-top: 32px;
    right: 10px;
    cursor: pointer;
  }
  
  

    nav {
      display: flex;
      flex-direction: column;
      gap: 20px;
      margin-top: auto; /* Push the nav items to the bottom */
    }

    nav a {
      color: black;
      text-decoration: none;
      font-weight: bold;
    }
  
   #profileimage {
        width: 100%;
        height: 200px;
        border-radius: 50%; /* This sets the border-radius to 50% to make it a circle. You can adjust this value as needed. */
    }
    
     .apply-btn {
  display: inline-block;
  background-color: darkblue;
  color: #fff;
  padding: 8px 12px;
  border: none;
  border-radius: 4px;
    text-align: center; /* Center the text */
  
  text-decoration: none; /* Remove underline */
  cursor: pointer;
}

.apply-btn:hover {
  background-color: navy; /* Change color on hover if desired */
}

}
}
  </style>
</head>
<body>
  <div id="container">
    <div id="left-half">
      <div id="search-bar">
    <p style="color: darkblue; font-size: 20px;"> <a href="applicanthome"> <img src="/images/navlogo.jpg" width="165px" height="55" /></a></p>
         <input type="search" id="searchInput" class="form-control" placeholder="Type Here to search for your required jobs">
      <button id="toggle-btn">&#9776;</button>
      </div>

      <!-- Sample job cards -->
     <br><br><br><br>
  <div class="card-body">
       <p style="color: darkblue; font-size: 24px;"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆 𝑨𝒑𝒑𝒍𝒚 𝑱𝒐𝒃</p>
       
          <h3><font color="green">${msg}</font></h3><br>
       
        <form action="applicanthome" method="get" id="passwordForm" >
        
         <button type="submit" class="btn btn-primary">Search For More Jobs..</button>
           
        </form>

 </div> </div>
   <br>
     <div id="right-half">
    <br><br><br><br>
     <div class="card">
      
  <img src='displayApplicantimage?id=${cid}' alt="Upload Your image here" style="width:100%"   height="200px" id="profileimage">
   
               
               
  <h1 style="color: black;">${fname} ${lname}  </h1>
  <pstyle="color: black;" class="title"> <h4>${email}</h4></p>
  
</div>
      <nav>
           <a href="applicanthome"><i class="fa fa-home">  HOME</i></a>
        <a href="myjobApplications"><i class="fa fa-envelope" >&nbsp;JOB APPLICATIONS</i></a>
          <a href="updateprofileApplicant"><i class='fas fa-edit' > UPDATE PROFILE</i></a>
            <a href="/"><i class="fas fa-sign-in-alt" > &nbsp;LOGOUT</i></a>
        <!-- Add more navigation items here -->
      </nav>
    </div>

  <script>
    // JavaScript for handling scrolling by revealing additional job cards
    const loadMoreBtn = document.getElementById('load-more-btn');

    loadMoreBtn.addEventListener('click', () => {
      const hiddenCards = document.querySelectorAll('.job-card.hidden');

      hiddenCards.forEach(card => {
        card.classList.remove('hidden');
      });
    });
  </script>
  
   <script>
        function validateFile() {
            var fileInput = document.getElementById('book');
            var filePath = fileInput.value;
            var allowedExtensions = /(\.pdf)$/i;
            
            if (!allowedExtensions.exec(filePath)) {
                alert('Invalid file format. Please select a .pdf file.');
                fileInput.value = ''; // Clear the file input field
                return false;
            }
            return true;
        }
    </script>
    <script>
//JavaScript for handling toggle of right-half on button click
  document.getElementById('toggle-btn').addEventListener('click', function () {
    document.getElementById('right-half').classList.toggle('show');
  });
</script>
</body>
</html>
