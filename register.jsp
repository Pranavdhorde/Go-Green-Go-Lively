<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
   
   <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
   
    <header>
    <nav>
    <div class="logo">GO GREEN<pp> GO LIVELY</pp></div>
      <input type="checkbox" id="click">
      <label for="click" class="menu-btn">
        <i class="fas fa-bars"></i>
      </label>
      <ul>
      <li><a  href="index.jsp">HOME</a></li>
        <li><a  href="">ABOUT US </a></li>
        <li><a  href="">CONTACT US</a></li>
      </ul>
    </nav>
  </header>

  <main style="background-image:url('img/bgi.jpg');" class="background-image">
    <div class="contact">
        <form action="register" method="POST" class="formm">
          <h2>User Register</h2>
          <input type="name" name="username" placeholder="User_Name" value="" required>
          <input type="email" name="email" placeholder="Email Id" value="" required>
          <input type="password" name="password" placeholder="password" value="" required>
          <input type="password" name="cpassword" placeholder="Conform password" value="" required>
          <input type="mobile" name="mobile" placeholder="Mobile" value="" required>
        
          <button name="submit" >Register</button>
          <p class="login-text">Have an account? <a href="login.jsp">Login Here</a></p>
        </form>
      </div>
    
  </main>
  
  
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css">
  
  <script type="text/javascript">
  
    var status = document.getElementById("status").value;
    if(status == "success")
    {
       swal("Congrats","Account Created Successfully","success");
    }
    </script>
    
    
  <footer>
    <p></p> Created By <a>SPM</a>
    |@2023 All rights reserved</p>
  </footer>
  </body>
  
</html>