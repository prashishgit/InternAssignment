<%-- 
    Document   : DatabaseInsert.jsp
    Created on : Jan 3, 2020, 2:44:23 PM
    Author     : user
--%>


<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String username, password, cpassword,id;
        %>
        <%
            username = request.getParameter("username");
            password = request.getParameter("password");
            cpassword = request.getParameter("cpassword");
            if (password.equals(cpassword)) {
                String sql = "INSERT INTO user VALUE("+id+",'" + username + "','" + password + "')";
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/shop";
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement stmt = con.createStatement();
                int result = stmt.executeUpdate(sql);
                if (result != -1) {
                    System.out.println("Inserted Successfully");
                    response.sendRedirect("index.jsp");
                } else {
                    response.sendRedirect("register.jsp");

                }
            } else{
               response.sendRedirect("register.jsp");
                System.out.println("Password doesn't match");
            }

        %>
    </body>
</html>
