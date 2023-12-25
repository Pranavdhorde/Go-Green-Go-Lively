<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/5beee37699.js" crossorigin="anonymous"></script>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
  
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
   
    <header>
    <nav>
      <div class="logo">GO GREEN<pp> GO LIVELY</pp></div>
      <input type="checkbox" id="click">
      <label for="click" class="menu-btn">
        <i class="fa-solid fa-bars"></i>
      </label>
      <ul>
        <li><a href="index.jsp">HOME</a></li>
        <li><a href="">ABOUT US </a></li>
        <li><a href="">CONTACT US</a></li>
        
      </ul>
    </nav>
  </header>
  <main class="background-image">

    

       <section class="section2">
         
    <nav>
    <ul>
      <li><a class="active" href="upcomingdata.jsp">UpComing Tree Plantation Drives</a></li>
      <li><a class="active" href="privousdata.jsp">Previous Tree Plantation Data</a></li>
      <li><a class="active" href="registrationfordrive.jsp">Registration For Drives</a></li>
      <li><a class="active" href="treesales.jsp">Tree Sales</a></li> 
    </ul>
    </nav>
    

  </section>
  <br>
  <br>
  <br>
  <br>

  <div class="contact">
        <form action="registrationofdrive" method="POST" class="formm">
          <h2>Registration Of Organizations<br> For Drives</h2>
          <input type="text" name="drivename" placeholder="Drive_Name" value="" required>
          <input type="text" name="oname" placeholder="Organization_Name" value="" required>
          <input type="email" name="oemail" placeholder="Organization_Email Id" value="" required>
          <input type="mobile" name="ocontact" placeholder="Contact Number" value="" required>
          <input type="url" name="owebsite" placeholder="Website" value="">
          <input type="text" name="ovenue" placeholder="Address for drive to be conducted" value="" required>
          <input type="date" name="odate" placeholder="Date" value="" required>
          <input type="time" name="otime" placeholder="Time" value="" required>
        
          <button name="submit" >Register</button>
         
        </form>
      </div>
    
   <br>
   <br>
   <br>
   <br>
  </main>
  
  
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css">
  
  <script type="text/javascript">
  
    var status = document.getElementById("status").value;
    if(status == "success")
    {
       swal("Congrats","Registration Successfully for Organizations","success");
    }
    </script>
    
    


  <footer>
    <p></p> Created By <a>SPM</a>
    |@2023 All rights reserved</p>
  </footer>
    
  </body>
</html>
    