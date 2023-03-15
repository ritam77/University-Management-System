<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
try{
	String ttoall = request.getParameter("ttoall");
	String tname = (String)session.getAttribute("name");
	String redirectUrl = "teacherdashboard.jsp";
	final String url="jdbc:mysql://localhost/data";
	final String user="root";
	final String pass="";
	final String Query="insert into ttoall(notice,tname) values(?,?)";
//this code is to register the mysql connector
Class.forName("com.mysql.cj.jdbc.Driver");
//this code is to establish the connection
Connection conn=DriverManager.getConnection(url,user,pass);
PreparedStatement pst = conn.prepareStatement(Query);
pst.setString(1, ttoall);
pst.setString(2, tname);
pst.executeUpdate();
response.sendRedirect(redirectUrl);
}catch(Exception e)
{
	System.out.println(e);
	e.printStackTrace();
}
%>