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
   
    <header>
    <nav>
      <div class="logo">GO GREEN<pp> GO LIVELY</pp></div>
      <input type="checkbox" id="click">
      <label for="click" class="menu-btn">
        <i class="fa-solid fa-bars"></i>
      </label>
      <ul>
        <li><a class="active" href="index.jsp">HOME</a></li>
        <li><a href="">ABOUT US </a></li>
        <li><a href="">CONTACT US</a></li>
        <li><a href=""><i class="icon fa-solid fa-user"></i></a>
          <div class="log-menu"> 
            <ul>
              <li><h4>
              <%
              String name1 = (String) session.getAttribute("name");
              if(name1 != null && !name1.isEmpty()){
                   out.println("welcome\n" +name1);
                   %>
                   <li><a class="logout" href="userlogout1">Logout</a></li>
                   <%
                }
                 else{
                	 out.println("welcome user");
                %>
              </h4></li>
              <li><a class="logout" href="login.jsp">UserLogin</a></li>
              <li><a class="logout" href="adminlogin.jsp">AdminLogin</a></li>
              <%
                 }
              %>
              
            </ul>
          </div>
        </li>
      </ul>
    </nav>
  </header>
  

    <section style="background-image:url('img/n2.jpg');" class="section1">
       <h1>Nature is Art of God</h1>
       
      </section>

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
  
<center><h3>Tree Plantation</h3>
 <p> Tree planting is recognised as one of the most engaging, environmentally-friendly activities that people can participate in to help the planet when done properly. </p>
  <p>Trees provide numerous long-term and short-term benefits. They not only look nice, but they also remove and store carbon from the atmosphere,</p>
  <p> slow heavy rain and thus reduce the risk of flooding, improve air quality, and reduce the urban heat island effect by reflecting sunlight and providing shade. </p>
 <p> Let us take a look at the long and short essay on tree plantation.</p>
  <br>
    	<img src= "img/f1.jpeg" height="400px" width="975px">
   <br> 	
    	<center><h3>Contribution to the Community</h3>
<p>Trees are an important component of every community and it takes a lot of effort to keep them that way. </p>
<p>You may have noticed that trees border your streets, parks, playgrounds, and backyards because of their medicinal and life-giving powers.</p>
 <p>Trees provide a serene and tranquil environment, therefore human settlements are incomplete without them.</p>
 <p>The number of trees surrounding you can impact the quality of your life.</p>
 <br>
 
 <img src= "img/f4.jpeg" height="500px" width="975px">
 <br>
 <center><h3>How does it work?</h3>
<p>Plant a Tree has already planted over 2 million trees across 5,930 acres.</p>
 <p>Because WLT’s partners are involved in every step of the reforestation process, 
each £5 donation covers the seed collection, growing, planting and protection,
 guaranteeing a new forest to help biodiversity and tackle climate change.</p>>
 <br>
 <iframe width="560" height="315" src="https://www.youtube.com/embed/WJ7eD6A4LlE" title="Plant a Tree" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
 <br>
    	<center><h3>Benefits of Planting Trees</h3>
<p>Most often we plant trees to provide shade and beautify our landscapes. These are great benefits but trees also provide other less obvious benefits.</p>
    	<br>
    <h3>	Social Benefits</h3>
<p>It has been shown that spending time among trees and green spaces reduces the amount of stress that we carry around with us in our daily lives.</p>
<p>Hospital patients have been shown to recover from surgery more quickly when their hospital room offered a view of trees.</p>
<p>Children have been shown to retain more of the information taught in schools if they spend some of their time outdoors in green spaces.</p>
<p>Trees are often planted as living memorials or reminders of loved ones or to commemorate significant events in our lives.</p>
  <center><h3>Environmental Benefits</h3>
<p>Trees offer many environmental benefits.
<p>Trees improve our air quality by filtering harmful dust and pollutants such as ozone, carbon monoxide, and sulfur dioxide from the air we breathe.
<p>Trees give off oxygen that we need to breathe.
<p>Trees reduce the amount of storm water runoff, which reduces erosion and pollution in our waterways and may reduce the effects of flooding.
<p>Many species of wildlife depend on trees for habitat. Trees provide food, protection, and homes for many birds and mammals.
  <center><h3>Economic Benefits</h3>
<p>Well placed trees can reduce your cooling costs in the summer by shading the south and west sides of your home.</p> 
<p>If deciduous trees are used they will allow the sun to pass through and warm your home in the winter.</p>
<p>Evergreen trees on the north side of your home and shrubs around the foundation of your </p>
<p>home can act as a windbreak to reduce the cooling effects of winter winds.</p>
    	<br>
    	<img src= "img/f6.jpeg" height="500px" width="975px">
  
  <center><h3>Conclusion</h3>
   <p>We recognise that one of the most serious issues in the current state is the devaluation of trees. </p>
  <p> To make our world greener and better, we must pay more attention to tree planting in the future.</p>
  <p>  Individual contributions should be made first. We should also put a stop to tree cutting and remember 
    that without trees, there will be no life.</p>
<p> The tree is very important in our lives. Everyone should be aware of the importance of tree planting and should motivate and encourage others to do the same.</p>
  <br>
  

  <footer>
    <p></p> Created By <a>SPM</a>
    |@2023 All rights reserved</p>
  </footer>
    
  </body>
</html>
