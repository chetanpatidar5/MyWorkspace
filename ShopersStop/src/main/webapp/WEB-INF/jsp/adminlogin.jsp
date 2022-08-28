<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    	if(session.getAttribute("userid") != null){
    		response.sendRedirect("adminwelcome.jsp");
    	}
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Admin Login Page</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/nav.css" rel="stylesheet" type="text/css" />
<link href="css/home.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/loginstyle.css" media="screen" type="text/css" />
<link rel="stylesheet" href="css/mystyle.css" media="screen" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
	function checkLogin(){
		var frm = document.logform;
		var uid = frm.userid.value.trim();
		var pwd = frm.password.value.trim();
		if(uid == "" || uid == null){
			alert("Please Enter User Id.");
			frm.userid.focus();
			return false;
		}
		if(pwd == "" || pwd == null){
			alert("Please Enter Password.");
			frm.password.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="clear"></div>
		<div class="container">
			<div class="wrap">
				<center><h6><%
					if(session.getAttribute("message") != null){
						out.println(session.getAttribute("message"));
						session.removeAttribute("message");
					}
				
				%></h6></center>
				<div id="login">			  
				  <h1>Log in</h1>
				  <form id="logform" name="logform" action="adminlogin" method="post" onsubmit="return checkLogin()">
				    <input type="text" placeholder="User Id" name="userid" />
				    <input type="password" placeholder="Password" name="password" />
				    <input type="submit" value="Log in" />
				  </form>
				</div>
				
				  
			</div>
		</div>
	<div class="clear"></div>
	<%@ include file="footer.jsp" %>
	
</body>
</html>