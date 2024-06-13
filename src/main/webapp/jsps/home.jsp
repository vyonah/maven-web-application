<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DevOps Xpress- Home Page</title
</head>
</head>
<body>
<h1 align="center">Welcome to DevOps Xpress Master Class 2024.</h1>
<h1 align="center">We are developing and supporting quality Software Solutions to millions of clients globally.
	We offer Training for DevOps Engineers with Linux, Kubernetes and Cloud, equipping IT Engineers for the best performance.
        With DevOps Xpress we take our time to train and equip engineers.
	DevOps MasterClass ongoing June 2024.
        Please invite all your contacts and friends. kobby2024 signed.
</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
		
</h1>
	
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/mylandmarklogo.png" alt="" width="150">
	</span>
	<span style="font-weight: bold;">
                DevOps Xpress, 
		Laurel, USA
		+1 240 426 0018,
		<br>
		<a href="mailto:mylandmarktech@gmail.com">Mail to Landmark Technologies</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center> Landmark Technologies - Consultant, Training and Software Development</p>
<p align=center><small>Copyrights 2024 by <a href="http://mylandmarktech.com/">Landmark Technologies</a> </small></p>

</body>
</html>
