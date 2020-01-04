<%-- 
    Document   : Register
    Created on : Jan 3, 2020, 11:27:31 AM
    Author     : user
--%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Minimal sign up form</title>
  <!-- LINEARICONS -->
		<link rel="stylesheet" href="Registraion/fonts/linearicons/style.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="Registraion/css/style.css">

  
</head>

<body>
    <br/>
<div class="wrapper">
			<div class="inner">
				
				<form action="DatabaseInsert.jsp" method="get">
					<h3>New Account?</h3>
					<div class="form-holder">
						<span class="lnr lnr-user"></span>
                                                <input type="text" class="form-control" placeholder="Username" name="username">
					</div>
					<div class="form-holder">
						<span class="lnr lnr-lock"></span>
						<input type="password" class="form-control" placeholder="Password" name="password" id="password" type="password">
					</div>
                                        <div class="form-holder">
						<span class="lnr lnr-lock"></span>
						<input type="password" class="form-control" placeholder="Confrim Password" name="cpassword" id="cpassword" type="password">
					</div>
                                        <button>
						<span>Register</span>
					</button>
                                 </form>
                        </div>
    </div>
    
    
    
    
    
 

<script src="Registraion/js/jquery-3.3.1.min.js"></script>
		<script src="Registraion/js/main.js"></script>


</body>

</html>
