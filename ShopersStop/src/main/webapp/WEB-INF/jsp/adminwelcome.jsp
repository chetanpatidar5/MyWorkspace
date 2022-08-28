<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	if(session.getAttribute("userid") == null){
		response.sendRedirect("adminlogin.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Admin Pannel</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/nav.css" rel="stylesheet" type="text/css" />
<link href="css/home.css" rel="stylesheet" type="text/css" />
<link href="css/stores.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/mystyles.css" media="screen" type="text/css" />
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<div class="container greyBg">
		<div class="row filter-container storeFilter">
        	<div class="span6 pull-left">
          		<h3>DashBoard Of Admin </h3>
        	</div>
        	<div class="span6 pull-right">
        		<h6 align="right" style="padding-right:10px;"><a href="logout.jsp" class="underline">Log Out</a></h6>
        	</div>
		</div>
		<div class="clear"></div>
		<div class="row greyBg">
			<jsp:include page="leftSidebar.jsp"/> 
        	
        	<div class="storeList clearfix span9">
        		
        		<div class="span3">
		        	<div class="storelogo">
		            	<a href="adminstoretypes.jsp">
		                	<img width="220" height="120" src="images/storetypes.jpg" class="attachment-storeImg wp-post-image" /> </a>
		        	</div>
		        	<!-- 
		        	<div class="storeContent">
		            	<h5><a href="singlestore.jsp">COTTON WORLD</a></h5>
		            	<p>Known for its cotton fabric, cotton world offers variety for men and women with variety of cotton wear.</p>
		        	</div> -->
		    	</div>
		    	
		    	<div class="span3">
		        	<div class="storelogo">
		            	<a href="adminstores.jsp">
		                	<img width="220" height="120" src="images/store.jpg" class="attachment-storeImg wp-post-image" /> </a>
		        	</div>
		        	
		    	</div>
		    	
		    	<div class="span3">
		        	<div class="storelogo">
		            	<a href="adminevents.jsp">
		                	<img width="220" height="120" src="images/mallevents.jpg" class="attachment-storeImg wp-post-image" /> </a>
		        	</div>
		        	
		    	</div>
		    	
		    	<div class="span3">
		        	<div class="storelogo">
		            	<a href="adminoffers.jsp">
		                	<img width="220" height="120" src="images/malloffers.jpg" class="attachment-storeImg wp-post-image" /> </a>
		        	</div>
		        	
		    	</div>
        		
        		<div class="span3">
		        	<div class="storelogo">
		            	<a href="adminrestauranttype.jsp">
		                	<img width="220" height="120" src="images/restauranttypes.jpg" class="attachment-storeImg wp-post-image" /> </a>
		        	</div>
		        	
		    	</div>
		    	
		    	<div class="span3">
		        	<div class="storelogo">
		            	<a href="adminrestaurants.jsp">
		                	<img width="220" height="120" src="images/restaurants.jpg" class="attachment-storeImg wp-post-image" /> </a>
		        	</div>
		        	
		    	</div>
        	</div>
		</div>
	</div>
	
	
	<%@ include file="footer.jsp" %>
</body>
</html>