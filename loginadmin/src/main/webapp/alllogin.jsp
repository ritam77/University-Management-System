<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Administrator Login</title>
        <link rel="stylesheet" href="./CSS/style.css">
    </head>

    <body>
        <div class="center">
            <form action="process.jsp" method="post">
                <div class="txt_field">
                    <select name="cuser" required>
                        <option>Choose user</option>
                        <option value="Teacher">Teacher</option>
                        <option value="Student">Student</option>
                        <option value="Admin">Administrator</option>
                    </select>
                </div>
                <div class="txt_field">
                    <input type="text" name="username" required>
                    <span></span>
                    <label>User ID</label>
                </div>
                <div class="txt_field">
                    <input type="password" name="password" required>
                    <span></span>
                    <label>Password</label>
                </div>
                <!-- <a class="forgetpass" href="../HTML 0/Forgot password.html">
                    Forgot Password?
                </a> -->
                <input type="submit" value="Login">
                <!-- <div class="remember">
        <input type="checkbox" name="remember">
        Remember me
      </div> -->
            </form>
        </div>
    </body>

    </html>