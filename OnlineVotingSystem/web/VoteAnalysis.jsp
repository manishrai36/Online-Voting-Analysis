<%-- 
    Document   : VoteAnalysis
    Created on : Apr 3, 2023, 7:44:43 AM
    Author     : LENOVO
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vote Analysis</title>
<link rel="stylesheet"  type="text/css"  href="style.css">


 <%
   
    Integer a[] = new Integer[3];
 
    Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineVotingDbDec","root","Manish11");
	
	PreparedStatement preparedStatement = con.prepareStatement("select count(vNumber) as c from voters ");
	ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select count(vNumber) as c from voters");
	
    int i=0;
    while(rs.next()){
        int temp = Integer.valueOf(rs.getString("c"));
        a[i]=temp;
        //i++;
    }
     preparedStatement = con.prepareStatement("select count(vNumber) as c from vote ");
     rs=((java.sql.Statement) preparedStatement).executeQuery("select count(vNumber) as c from vote");
    while(rs.next()){
        int t = Integer.valueOf(rs.getString("c"));
        a[1]=t;
        //i++;
    }
        a[2]=a[0]-a[1];
    %>


</head>

<%@ include file="adminNavbar.jsp" %>
<body>

<table >
    <tr>
        <th >Voter</th>
        <th>Voted</th>
        <th>Remaining</th>
    </tr>

    <tr>
        <td><%=a[0]%></td>
        <td><%=a[1]%></td>
        <td><%=a[2]%></td>
    </tr>

</table>
</body>
</html>
