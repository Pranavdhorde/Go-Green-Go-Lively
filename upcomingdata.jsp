<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/5beee37699.js" crossorigin="anonymous"></script>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
   
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
  
  
   <%
    Connection con =null;
    Statement st = null;
    ResultSet rs = null;
    
    try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/organization","root","pass@123");
		st=con.createStatement();
		
		String qry ="select * from upcomingdata";
		rs=st.executeQuery(qry);
		
		while(rs.next())
		{
    %>
    
		<div class="objects">
		   <div class="box show" style="background-image:url('img/gimg6.jpg');">
		   <style>
		   
		   table,th,td
		   {
		   border:1px solid black;
		   border-collapse:collapse;
		   }
		   
		    a.button
		    {
		    text-decoration: none;
            padding: 8px;
            background: #088A08;
            color:#f0ebe8;
            font-size: 25px;
            font-weight: 700;
            border:0;
            outline: none;
            cursor: pointer;
            width: 150px;
            margin: 15px auto 0;
            border-radius: 20px;
            }
            
         a.button:hover
         {
         background: #020202;
         color:#f0ebe8;
         }
		    
		   
		   </style>
		   <br>
		    
		   <center> <h2>Organization Name:<a style="color:#DF0101"> <% out.print(rs.getString("uname"));%> </a></h2> </center>
		<center> 
		  
		  
		   <h2>Drive Name :
		   <a style="color:#0404B4"> <% out.print(rs.getString("udrivename"));%> </a></h2>
		  
		   <h2> Organization Email :
		   <a style="color:#0404B4"> <% out.print(rs.getString("uemail"));%> </a></h2>
		   
		   
		   <h2> Organization WebSite :
		   <a style="color:#0404B4"> <% out.print(rs.getString("uwebsite"));%> </a></h2>
		   
		   
		   <h2> Drive Address:
		   <a style="color:#0404B4"> <% out.print(rs.getString("uvenue"));%> </a></h2>
		   
		   <h2> Drive Date :
		   <a style="color:#0404B4"> <% out.print(rs.getString("udate"));%> </a></h2>
		   
		   <h2> Drive Time :
		   <a style="color:#0404B4"> <% out.print(rs.getString("utime"));%> </a></h2>
		  
		</center>
	<br>
		       <center> <a class="button" href="#">Donation</a>

		       <center>
     <br>
		        
			</div>
        </div>
        <br>
	<%
			
		}
    }catch(Exception ex)
    {
    	
    }
    
    %>
    
  
    
    
    
  
  </main>
  
  


  <footer>
    <p></p> Created By <a>SPM</a>
    |@2023 All rights reserved</p>
  </footer>
    
  </body>
</html>
    