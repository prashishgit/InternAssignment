<%-- 
    Document   : Updatebackend
    Created on : Jan 3, 2020, 4:12:14 PM
    Author     : user
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
String id = request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/shop";
Connection con = DriverManager.getConnection(url, "root", "");
%>
<%

String username=request.getParameter("username");
String password=request.getParameter("password");

if(id != null)
{

PreparedStatement ps = null;
int userId = Integer.parseInt(id);
try
{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url, "root", "");
String sql="Update user set id=?,username=?,password=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, username);
ps.setString(3, password);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>