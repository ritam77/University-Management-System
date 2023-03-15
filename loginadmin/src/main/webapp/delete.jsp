<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
String redirectUrl = "adminstudent.jsp";
String sid = request.getParameter("sid");
final String url="jdbc:mysql://localhost/data";
final String user="root";
final String pass="";
//this code is to register the mysql connector
Class.forName("com.mysql.cj.jdbc.Driver");
//this code is to establish the connection
Connection conn=DriverManager.getConnection(url,user,pass);
Statement st = conn.createStatement();
st.executeUpdate("delete from student_details where sid='"+sid+"'");
st.executeUpdate("delete from loginall where email='"+sid+"'");
response.sendRedirect(redirectUrl);
%>