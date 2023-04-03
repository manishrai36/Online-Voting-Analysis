<%-- 
    Document   : adminWelcome
    Created on : Mar 30, 2023, 12:14:13 PM
    Author     : LENOVO
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Admin</title>
<link rel="stylesheet"  type="text/css"  href="style.css">
</head>

<%@ include file="adminNavbar.jsp" %>

<body>

<div class="form-container">
<div class="welcome-form">
<h2>Welcome Admin!</h2>
<a href="register.jsp">Register</a>
<br>
<br>
<a href="checkResults.jsp">CheckResults</a>
<br>
<br>
<a href="VoteAnalysis.jsp">VoteAnalysis</a>
 </div>
</div>

</body>
</html>
