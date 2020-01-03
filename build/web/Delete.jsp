<%-- 
    Document   : Delete
    Created on : Jan 3, 2020, 3:38:27 PM
    Author     : user
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM user WHERE id="+id);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
