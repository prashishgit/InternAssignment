<%-- 
    Document   : index
    Created on : Jan 3, 2020, 3:25:29 PM
    Author     : user
--%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "shop";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
  </head>
     <body>
        <form action="loginServlet" method="POST">
            <div class="wrap">
                <div class="avatar">
                    <img src="E:\Apex Course\5th sem\advance java\JavaProject\web\images\login.png">
                </div>
                <input type="text" name="username" placeholder="username" required>
                <div class="bar">
                    <i></i>
                </div>
                <input type="password" name="password" placeholder="password" required>
                <a href="" class="forgot_link">forgot ?</a>
                <button>Login In</button>
                <!--<button>Sign in</button>-->
                <div class="anchor">
                    <a href="Register.jsp">Registration</a>
                </div>
            </div>
        </form>
        <!--        <script src="js/index.js"></script>-->
        <script src="index.js"></script>

    </body>
</html>