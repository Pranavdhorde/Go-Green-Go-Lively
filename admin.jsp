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
   
   <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
   
    <header>
    <nav>
      <div class="logo">GO GREEN<pp> GO LIVELY</pp></div>
      <input type="checkbox" id="click">
      <label for="click" class="menu-btn">
        <i class="fa-solid fa-bars"></i>
      </label>
      <ul>
      <li><a><i class="icon fa-solid fa-user"></i></a>
        <li><a>
        <%
              String name1 = (String) session.getAttribute("name");
              if(name1 != null && !name1.isEmpty()){
                   out.println("welcome\n" +name1);
                   %>
        </a></li>
        
        <li><a class="logout" href="adminlogout">Logout</a></li>
        <%} %>
         
      </ul>
    </nav>
  </header>
  <main class="background-image">
      <br>
  
  
    <%
    Connection con =null;
    Statement st = null;
    ResultSet rs = null;
    
    try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/organization","root","pass@123");
		st=con.createStatement();
		
		String qry ="select * from register";
		rs=st.executeQuery(qry);
		
		while(rs.next())
		{
    %>
    
		<div class="objects">
		   <div class="box show" >
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
            background: #0000FF;
            color:#f0ebe8;
            font-size: 23px;
            font-weight: 600;
            border:0;
            outline: none;
            cursor: pointer;
            width: 130px;
            margin: 15px auto 0;
            border-radius: 20px;
            }
            
         a.button:hover
         {
         background: #020202;
         color:#f0ebe8;
         }
		    
		   
		   </style>
		    
		   <center> <h2>Organization Name:<a style="color:#3944BC"> <% out.print(rs.getString("oname"));%> </a></h2> </center>
		<center> 
		  
		  <table>
		   <tr>
		   <th><h2>Drive Name :</h2></th>
		   <th><h2><a style="color:red"> <% out.print(rs.getString("drivename"));%> </a></h2></th>
		   </tr>
		   
		   <tr>
		   <th><h2> Organization Email :</h2></th>
		   <th><h2><a style="color:red"> <% out.print(rs.getString("oemail"));%> </a></h2></th>
		   </tr>
		   
		   
		   <tr>
		   <th><h2> Organization Contact No :</h2></th>
		   <th><h2><a style="color:red"> <% out.print(rs.getString("ocontact"));%> </a></h2></th>
		   </tr>
		   
		   <tr>
		   <th><h2> Organization WebSite :</h2></th>
		   <th><h2><a style="color:red"> <% out.print(rs.getString("owebsite"));%> </a></h2></th>
		   </tr>
		   
		   <tr>
		   <th><h2> Drive Address/Venue:</h2></th>
		   <th><h2><a style="color:red"> <% out.print(rs.getString("ovenue"));%> </a></h2></th>
		   </tr>
		   
		   <tr>
		   <th><h2> Drive Date :</h2></th>
		   <th><h2><a style="color:red"> <% out.print(rs.getString("date"));%> </a></h2></th>
		   </tr>
		   
		   <tr>
		   <th><h2> Dive time :</h2></th>
		   <th><h2><a style="color:red"> <% out.print(rs.getString("time"));%> </a></h2></th>
		   </tr>
		  
		   </table>
		</center>
	<br>
		       <center> <a class="button" href="upcomingdata?rowno=<%=rs.getString(1)%>">Accept</a>
		                <a class="button" href="deleted?rowno=<%=rs.getString(1)%>"> Reject</a>
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
  
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css">
  
  <script type="text/javascript">
  
    var status = document.getElementById("status").value;
    if(status == "succes")
    {
       swal("Reject","Rejected Successfully","success");
    }
    if(status == "success")
    {
       swal("Accept","Accept Successfully","success");
    }
    
    </script>


  <footer>
    <p></p> Created By <a>SPM</a>
    |@2023 All rights reserved</p>
  </footer>
    
  </body>
</html>
    