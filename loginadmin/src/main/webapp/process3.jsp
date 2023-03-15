<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
try{
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String sid = request.getParameter("sid");
	String course_code = request.getParameter("course_code");
	String year = request.getParameter("year");
	String password = request.getParameter("password");
	String redirectUrl = "adminstudent.jsp";
	final String url="jdbc:mysql://localhost/data";
	final String user="root";
	final String pass="";
	final String Query1="insert into student_details(fname,lname,sid,course_code,year,password) values(?,?,?,?,?,?)";
	final String Query2="insert into loginall(email,password,catagory) values(?,?,?)";
//this code is to register the mysql connector
Class.forName("com.mysql.cj.jdbc.Driver");
//this code is to establish the connection
Connection conn=DriverManager.getConnection(url,user,pass);
PreparedStatement pst = conn.prepareStatement(Query1);
pst.setString(1, fname);
pst.setString(2, lname);
pst.setString(3, sid);
pst.setString(4, course_code);
pst.setString(5, year);
pst.setString(6, password);
PreparedStatement pst2 = conn.prepareStatement(Query2);
pst2.setString(1, sid);
pst2.setString(2, password);
pst2.setString(3, "Student");
pst.executeUpdate();
pst2.executeUpdate();
response.sendRedirect(redirectUrl);
}catch(Exception e)
{
	System.out.println(e);
	e.printStackTrace();
}
%>