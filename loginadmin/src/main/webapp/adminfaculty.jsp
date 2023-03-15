<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                  <%@ page import="java.sql.*" %>
    <%
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    }catch(Exception e)
    {
    	System.out.println(e);
    	e.printStackTrace();
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Details</title>
<link rel="stylesheet" href="./CSS/style.css">
</head>
<body>
		<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
        <button class="w3-bar-item w3-button w3-large" onclick="w3_close()"> &times;</button>
        <center><img src="logo.png" height="100"></center><br>
 		<a href="admindashboard.jsp" class="w3-bar-item w3-button"> Home</a>
        <a href="admincourse.jsp" class="w3-bar-item w3-button">Courses</a>
        <a href="adminstudent.jsp" class="w3-bar-item w3-button">Student</a>
        <a href="adminsubject.jsp" class="w3-bar-item w3-button">Subject</a>
        <a href="adminfaculty.jsp" class="w3-bar-item w3-button">Faculty</a>
        <a href="adminlogin.jsp" class="w3-bar-item w3-button">Logout</a>
    </div>
    <div id="main">

        <div class="w3-teal">
            <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
            <div class="w3-container">
                <h1>Welcome To Siliguri Institute of Technology</h1>
            </div>
        </div>
		<div class="w3-container">
            <center><input type="submit" value="Add Faculty" onclick="openForm()"></center>
            <div class="form-popup" id="myForm">
              <form action="process4.jsp" method="post" class="form-container">
                
            
                <label for="fname"><b>Teacher ID:</b></label>
                <input type="text"  placeholder="Enter Teacher Id" name="tid" required>
            
                <label for="lname"><b>Teacher Name :</b></label>
                <input type="text" placeholder="Teacher Name" name="name" required>
                
                <label for="mail"><b>Mail ID :</b></label>
                <input type="text"  placeholder="mail" name="email" required>
          

                <label for="desg"><b>Designation :</b></label>
                <input type="text"  placeholder="Designation" name="designation" required>
          
                <label for="pass"><b>Password :</b></label>
                <input type="text"  placeholder="Password" name="password" required>
          

                <button type="submit" class="btn">Add</button>
                <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
              </form>
            </div>
        </div>
         <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
              </form>
</div>
<center>
        <table class="table">
<tr>
<th scope="col">Teacher Id</th>
<th scope="col">Teacher Name</th>
<th scope="col">Designation</th>
<th scope="col">Email</th>
<th scope="col">Subject</th>
<th scope="col">Edit</th>
<th scope="col">Delete</th>
</tr>
    <%
try{
final String url = "jdbc:mysql://localhost/data";
final String user="root";
final String pass = "";
final String Query="select * from faculty_details";
Connection conn = DriverManager.getConnection(url,user,pass);
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(Query);
while(rs.next()){
	%>
<tr>
<td><%=rs.getString("tid")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("designation")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("password")%></td>
<td><a href="updatef.jsp?tid=<%=rs.getString("tid")%>">Edit</a></td>
<td><a href="deletef.jsp?email=<%=rs.getString("email")%>">Delete</a></td>
</tr>
<% 
}
}catch(Exception e)
{
System.out.println(e);
e.printStackTrace();
}
%>
</table>
    </div>
</center>
        

    <script>
        function w3_open() {
            document.getElementById("main").style.marginLeft = "25%";
            document.getElementById("mySidebar").style.width = "25%";
            document.getElementById("mySidebar").style.display = "block";
            document.getElementById("openNav").style.display = 'none';
        }
        function w3_close() {
            document.getElementById("main").style.marginLeft = "0%";
            document.getElementById("mySidebar").style.display = "none";
            document.getElementById("openNav").style.display = "inline-block";
        }
    </script>

	    <script>//for add button
      function openForm() {
        document.getElementById("myForm").style.display = "block";
      }
      
      function closeForm() {
        document.getElementById("myForm").style.display = "none";
      }
      </script>
	    <script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>