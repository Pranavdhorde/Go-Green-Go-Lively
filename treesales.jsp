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
  <div class="fullbox">
  
   <%
    Connection con =null;
    Statement st = null;
    ResultSet rs = null;
    
    try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/feed","root","pass@123");
		st=con.createStatement();
		
		String qry ="select * from image";
		rs=st.executeQuery(qry);
		
		while(rs.next())
		{
    %>
    
     <style>
		   
		   .fullbox{
		   background-color:white;
		   padding:0px;
		   margin:20px;
		   display:flex;
		   flex-wrap:wrap;
		   
		   }
		   .boxx{
		   background-color:#ccffff;
		   width:200px;
		   height:300px;
		   border:1px solid black;
		   box-shadow:2px 2px 4px rgba(0,0,0,0.3);
		   padding:20px;
		   margin:30px;
		   }
		   a.button
		    {
		    text-decoration: none;
            padding: 5px;
            background: #ff9900;
            color:#000000;
            font-size: 23px;
            font-weight: 600;
            border:0;
            outline: none;
            cursor: pointer;
            width: 130px;
            margin: 15px auto 0;
            border-radius: 10px;
            }
            
         a.button:hover
         {
         background: #020202;
         color:#f0ebe8;
         }
	 </style>
	 
		
		   <div class="boxx">
		  
		   <br>
		   <img src="<%=rs.getString("img") %>">
		   <h4><%out.print(rs.getString("tname")); %></h4>
		   <h5><% out.print(rs.getString("tprice")); %></h5><br>
		   <center><a class="button" href="">BUY</a></center>
		  </div>
        
        <br>
	<%
			
		}
    }catch(Exception ex)
    {
    	
    }
    
    %>
    
  </div>
  <br>
  
  </main>
  
  


  <footer>
    <p></p> Created By <a>SPM</a>
    |@2023 All rights reserved</p>
  </footer>
    
  </body>
</html>
    