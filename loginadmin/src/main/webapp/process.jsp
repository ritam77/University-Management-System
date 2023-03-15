<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
try{
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String cuser = request.getParameter("cuser");
	String name = request.getParameter("name");
	String adminpage = "admindashboard.jsp";
	String teacherpage = "teacherdashboard.jsp";
	String studentpage = "studentdashboard.jsp";
	final String url="jdbc:mysql://localhost/data";
	final String user="root";
	final String pass="";
	final String Query="select * from loginall where email='"+username+"' and password='"+password+"' and catagory='"+cuser+"'" ;
	final String Query2="SELECT faculty_details.name FROM faculty_details INNER JOIN loginall ON faculty_details.email='"+username+"'" ;
	final String Query3="SELECT student_details.fname FROM student_details INNER JOIN loginall ON student_details.sid='"+username+"'";
//this code is to register the mysql connector
Class.forName("com.mysql.cj.jdbc.Driver");
//this code is to establish the connection
Connection conn=DriverManager.getConnection(url,user,pass);
Statement st = conn.createStatement();
PreparedStatement pst = conn.prepareStatement(Query2);
PreparedStatement pst1 = conn.prepareStatement(Query3);
ResultSet rs = st.executeQuery(Query);
rs.next();
ResultSet rs1 = pst.executeQuery();
rs1.next();
ResultSet rs2 = pst1.executeQuery();
rs2.next();
if(rs.getString("email").equals(username) && rs.getString("password").equals(password) && rs.getString("catagory").equals("Admin"))
{

	response.sendRedirect(adminpage);
}
else if(rs.getString("email").equals(username) && rs.getString("password").equals(password) && rs.getString("catagory").equals("Teacher"))
{
	session.setAttribute("name",rs1.getString(1));
	response.sendRedirect(teacherpage);
}
else if(rs.getString("email").equals(username) && rs.getString("password").equals(password) && rs.getString("catagory").equals("Student"))
{
	session.setAttribute("name",rs2.getString(1));
	response.sendRedirect(studentpage);
}
else
{
	System.out.print("Incorrect Login Details");
}
}catch(Exception e)
{
	System.out.println(e);
	e.printStackTrace();
}
%>