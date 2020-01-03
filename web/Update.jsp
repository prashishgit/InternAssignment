<%-- 
    Document   : Update
    Created on : Jan 3, 2020, 3:59:32 PM
    Author     : user
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/shop";
Connection con = DriverManager.getConnection(url, "root", "");

Statement state = null;
ResultSet result = null;
%>
<%
try{

state=con.createStatement();
String sql ="select * from user where id="+id;
result = state.executeQuery(sql);
while(result.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="Updatebackend.jsp">
<input type="hidden" name="id" value="<%=result.getString("id") %>">

<br>
UserName:<br>
<input type="text" name="username" value="<%=result.getString("username") %>">
<br>
Password:<br>
<input type="text" name="password" value="<%=result.getString("password") %>">
<br>
<br><br>
<input type="submit" value="Update">
</form>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>