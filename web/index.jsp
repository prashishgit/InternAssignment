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
        <!--<link rel="stylesheet" href="css/reset.css">-->
        
        <link rel="stylesheet" href="login/reset.css">

        <!--<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />-->
        <link rel="stylesheet" href="login/style.css" media="screen" type="text/css" />
        <style>
            #register
            {
                background-color: #a9a9a9;
            }
        </style>
  </head>
     <body>
        <form action="loginServlet" method="POST">
            <div class="wrap">
                <div class="avatar">
                    <img src="login/login.png">
                </div>
                <input type="text" name="username" placeholder="username" required>
                <div class="bar">
                    <i></i>
                </div>
                <input type="password" name="password" placeholder="password" required>
                <a href="" class="forgot_link">forgot ?</a>
                <button>Login</button>
             
                <!--<button>Sign in</button>-->
                <div class="anchor" style="margin-top: 15px">
                     <button id="register"><a href="Register.jsp" class="btn-primmary" style="text-decoration: none;">Registration</a></button>
                </div>
            </div>
        </form>
        <!--        <script src="js/index.js"></script>-->
        <script src="login/index.js"></script>

    </body>
</html>