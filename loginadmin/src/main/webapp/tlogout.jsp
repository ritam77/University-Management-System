<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Logout</title>
<script src="backNoWork.js" type="text/javascript"></script>
</head>
<body>
<%
response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Expires", "0");
response.setDateHeader("Expires", -1);
session.invalidate();
response.sendRedirect("alllogin.jsp");
%>
</body>
</html>