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
    <head>
        <link rel="stylesheet" href="Registraion/fonts/linearicons/style.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="Registraion/css/style.css">
    </head>
    
<body>
     <br/>
<div class="wrapper">
			<div class="inner">

<form method="post" action="Updatebackend.jsp">
    <h3>Update Account?</h3>
    <div class="form-holder">
           
<input type="hidden" name="id" value="<%=result.getString("id") %>">

        <span class="lnr lnr-user"></span>
            <input type="text" class="form-control" placeholder="Username" name="username" value="<%=result.getString("username") %>">
    </div>
    <div class="form-holder">
            <span class="lnr lnr-lock"></span>
            <input type="password" class="form-control" placeholder="Password" name="password" id="password" type="password" value="<%=result.getString("password") %>">
    </div>
   
    <button>
            <span>Update</span>
    </button>

    
  
</form>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</div>

<script src="Registraion/js/jquery-3.3.1.min.js"></script>
		<script src="Registraion/js/main.js"></script>


</body>
</html>