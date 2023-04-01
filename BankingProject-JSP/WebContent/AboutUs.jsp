 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
<style>
*
{
padding :0;
margin:0;
font-family:'Josefin Sans',sans-serif;
box-sizing: border-box;
}
.about
{
width: 100%;
padding: 78px 0px;
background-color: #191919;
}
.about img
{
height: 400px;
width: 300px;
margin:100px;
}
.about img:hover
{
height: 600px;
width: 450px;
cursor: zoom-out;
}
.about-text
{
width:800px;
}
.main
{
width: 1130px;
max-width: 95%;
marding: 0 auto;
display: flex;
align-items: center;
justify-content: space-around;
}
.about-text h1
{
color:white;
font-size:80px;
text-transform:capitalize;
margin-bottom: 20px;
}
.about-text h3
{
color:white;
font-size:25px;
text-transform:capitalize;
margin-bottom: 25px;
letter-spacing: 2px;
}
.about-text h6
{
color:white;
font-size:20px;
text-transform:capitalize;
margin-bottom: 25px;
letter-spacing: 2px;
}
span
{
color:#f9004d;
}
.about-text p
{
color: #fcfc;
font-size:15px;
line-height: 28px;
text-transform:capitalize;
margin-bottom: 45px;
letter-spacing: 1px;
}
button
{
background:#f9004d;
color: white;
text-decoration:none;
border: 2px solid transparent;
font-weight:bold;
padding: 13px 30px;
}
button:hover
{
background: transparent;
border: 2px solid #f9004d;
cursor:pointer;
}
a
{
text-decoration:none;
color: white;
}
</style>
</head>
<body>
<section class="about">
<div class="main">
<img src="IMG_20221024_122033.jpg">
<div class="about-text">
<h1>About <span>Us</span></h1>
<h3><span>CEO</span> You Can Learn Bank Cooperations</h3>
<h6>Developer<span> & Designer</span></h6>
<p> This is <span>Konakalla Naga Venkata Nikhil</span> a Trainee full-Stack developer, i have been trained on both client side technologies and also server-side technologies and a 2022 computer 
    science and engineering student from AndhraPradesh. I can provide clean code and pixel perfect design.
    I also make the websites more responsive and more & more interactive with web animations.Currently 
    looking for an opportunity as a fresher and i will use all my skills and make my contribution to the company.
    A responsive design makes your website accessible to all user, regardless of their device.<br>
    <span>Skills:</span>  HTML , CSS , JAVA SCRIPT , J2EE ,J2SE , ORACLE DataBase.</p>
    <button type="button"><a href="contact.jsp">let's Talk</a></button>
</div>
</div>
</section>
</body>
</html>