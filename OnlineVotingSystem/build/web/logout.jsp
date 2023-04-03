<%-- 
    Document   : logout
    Created on : Mar 30, 2023, 12:16:32 PM
    Author     : LENOVO
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
<%
          HttpSession session1 = request.getSession();
          session1.removeAttribute("aName");
          response.sendRedirect("index.jsp");
%>
</body>
</html>
