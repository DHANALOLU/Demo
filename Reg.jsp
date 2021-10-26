<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String user = request.getParameter("uid");
session.putValue("userid",user);
String pwd= request.getParameter("password");
String fname = request.getParameter("fname");
String lname= request.getParameter("lname");
String email= request.getParameter("email");
Class.forName("com.mysql.cj.jdbc.Driver");  
java.sql.Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/users","root","root"); 
String insert ="insert into usersdata values('"+user+"','"+pwd+"','"+fname+"','"+lname+"','"+email+"')";
PreparedStatement insertrow1 = con.prepareStatement(insert);
insertrow1.execute();
out.println("Registered");
%>
</body>
<a href = "Login.html">LOGIN</a>
</html>