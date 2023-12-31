<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Add Bootstrap CSS and JS -->
   <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>
  
<link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
  <title>TalentForge | My Job Applications</title>

  <style>
  
  
.modal {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
}

.modal-content {
    position: absolute;
    top: 50%;
    left: 50%;
    font-size:20px;
    transform: translate(-50%, -50%);
    background-color: #fff;
    padding: 100px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

/* Add more styling based on your design preferences */

/* Style for the buttons with spacing between them */
.modal-content button {
    text-align:center;
    margin-right: 20px;
}
  
  
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
  
  
  #toggle-btn {
  display: none; /* Initially hide the toggle button */
}
  .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}
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
	background-color: darkblue;
	color: white;
}

.btn {
	background-color: skyblue;
	padding: 5px 16px;
	font-size: 12px;
	cursor: pointer;
}
 #profileimage {
        width: 100%;
        height: 200px;
        border-radius: 50%; /* This sets the border-radius to 50% to make it a circle. You can adjust this value as needed. */
    }
	/* Add this CSS to the existing styles */
.btn.view-btn {
  display: inline-block;
  background-color: #3498db; /* Blue color */
  color: #fff; /* White color */
  padding: 13px 26px;
  text-decoration: none; /* Remove underline from the link */
  border-radius: 4px;
  cursor: pointer;
}

.btn.view-btn:hover {
  background-color: #2980b9; /* Darker blue color on hover */
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
   margin-top: 45px;
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
     <br>
    
    <h5 align="center" style="color:red">${message}</h5>
 <table id="employee">
			<tr bgcolor="black" style="color: white">
				<th>Applicant ID</th>
				<th>Applicantion ID</th>
				<th>Job Title</th>
				<th>Company</th>
				<th>Applicant Email</th>
				<th>View Application Status</th>
				<th>WithDraw Application</th>
				
			</tr>
			<c:forEach items="${jobslist}" var="job">
				<tr>
				<td><c:out value="${job.id}" /></td>
					<td><c:out value="${job.applicationid}" /></td>
					<td><c:out value="${job.jobtitle}" /></td>
					
					</td>
					<td><c:out value="${job.companyname}" /></td>
					<td><c:out value="${job.email}" /></td>
					<div id="withdrawApplicationModal" class="modal">
								    <div class="modal-content">
								        <p>Are you sure you want to withdraw this application?</p>
								        <button id="confirmWithdrawApplicationBtn">Withdraw</button>
								        <button id="cancelWithdrawApplicationBtn">Cancel</button>
								    </div>
								</div>
					 <td>
					    <a href="getApplicationStatus?id=${job.id}&jobtitle=${job.jobtitle}&jobid=${job.id}" class="btn view-btn">View</a>
					  </td>
					 <td>
					  <a href="#" class="btn view-btn" onclick="confirmWithdraw(${job.id}, ${job.applicationid})">Withdraw</a>
					</td>
				</tr>
			</c:forEach>
		</table>

  
 </div>
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
//JavaScript for handling toggle of right-half on button click
  document.getElementById('toggle-btn').addEventListener('click', function () {
    document.getElementById('right-half').classList.toggle('show');
  });
</script>

<script>
function confirmWithdraw(id, applicationid) {
  // Display a confirmation dialog
  var isConfirmed = confirm("Are you sure you want to withdraw the application?");

  // If the user clicks "OK", proceed with withdrawal
  if (isConfirmed) {
    // Redirect to the withdrawal URL or trigger an AJAX request to perform withdrawal
    window.location.href = "/withdrawApplication?id=" + id + "&applicationid=" + applicationid;
  } else {
    // If the user clicks "Cancel" do nothing or provide feedback
    // You can add additional logic here if needed
    console.log("Withdrawal canceled");
  }
}
</script>
<script>
        // Previous JavaScript code for adding to the cart

        const searchInput = document.getElementById('searchInput');
        const products = document.querySelectorAll('.employee');

        searchInput.addEventListener('input', function () {
            const searchText = searchInput.value.toLowerCase();

            products.forEach(product => {
                const productName = product.querySelector('Job Title').textContent.toLowerCase();
                if (productName.includes(searchText)) {
                    product.style.display = 'block';
                } else {
                    product.style.display = 'none';
                }
            });
        });
    </script>
</body>
</html>
