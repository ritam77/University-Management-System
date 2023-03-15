<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
try{
	String tid = request.getParameter("tid");
	String name = request.getParameter("name");
	String designation = request.getParameter("designation");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String redirectUrl = "adminfaculty.jsp";
	final String url="jdbc:mysql://localhost/data";
	final String user="root";
	final String pass="";
	final String Query="insert into faculty_details(tid,name,designation,email,password) values(?,?,?,?,?)";
	final String Query2="insert into loginall(email,password,catagory) values(?,?,?)";
//this code is to register the mysql connector
Class.forName("com.mysql.cj.jdbc.Driver");
//this code is to establish the connection
Connection conn=DriverManager.getConnection(url,user,pass);
PreparedStatement pst = conn.prepareStatement(Query);
pst.setString(1, tid);
pst.setString(2, name);
pst.setString(3, designation);
pst.setString(4, email);
pst.setString(5, password);
PreparedStatement pst2 = conn.prepareStatement(Query2);
pst2.setString(1, email);
pst2.setString(2, password);
pst2.setString(3, "Teacher");
pst.executeUpdate();
pst2.executeUpdate();
response.sendRedirect(redirectUrl);
}catch(Exception e)
{
	System.out.println(e);
	e.printStackTrace();
}
%>