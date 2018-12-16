<%@page import="com.ttmgmt.domain.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%-- <spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="img" value="/resources/img" />
 --%>	    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<spring:url value="/resources/img/favicon.png"/>" rel="icon"/>


<link href="<spring:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>" rel="stylesheet"/>


<%-- <script src="<ss:url value="/resources/js/jquery.min.js"/>"></script> --%>

<%-- <script src="<ss:url value="/resources/js/bootstrap.min.js"/>"></script> --%>



<link href="<spring:url value="/resources/css/rohan.css"/>" rel="stylesheet"/>

<link href="<spring:url value="/resources/img/favicon.png"/>" rel="icon"/>

<link href="<spring:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet"/>

<link href="<spring:url value="/resources/css/Bootstrap.css"/>" rel="stylesheet"/>
<link href="<spring:url value="/resources/css/rohan.css"/>" rel="stylesheet"/>


<style type="text/css">


.body {
 	
	
    min-height: calc(100%)  ;
	padding-top: 80px;
 	position: relative; 
 	top: 0;
 	margin-top: 0;
}

.orsform_modal-dialog {
	margin-top:0;
	margin-bottom: 0;
}

.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
}

</style>
</head>
<%
		User userDto = (User)session.getAttribute("user");

		boolean userLoggedIn = userDto != null;

		String welcomeMsg = "Hi, ";

		if (userLoggedIn) {
			welcomeMsg += userDto.getFirstName().toUpperCase() ;
		} else {
			welcomeMsg += "Guest";
		}
	%>


	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">


			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a href="WelcomeCtl"><img
				style="background-color: #A9A9A9"
				src="${pageContext.request.contextPath}/resources/img/nitk-logo.png" width="120" height="50">
			</a>

		</div>



		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				


				
				


				<ul class="nav navbar-nav">
					<li class="#"><a class="#" href="#"></a>
						<ul class="#">


							<li></li>
							<li></li>
						</ul></li>
				</ul>

	<%if(userLoggedIn) {%>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><b>Home</b> </a>
					</li>
				</ul>


				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><b>Time Table</b><span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/timetable/add"><span
									class="glyphicon glyphicon-plus"></span>Add TimeTable</a></li>
							<li><a href="${pageContext.request.contextPath}/timetable/list"><span
									class="glyphicon glyphicon-list-alt"></span>TimeTable List</a></li>
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><b>Subject</b> <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/subject/add"><span
									class="glyphicon glyphicon-plus"></span>Add Subject</a></li>
							<li><a href="${pageContext.request.contextPath}/subject/list"><span
									class="glyphicon glyphicon-list-alt"></span>Subject List</a></li>
						</ul></li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><b>Faculty</b> <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/faculty/add"><span
									class="glyphicon glyphicon-plus"></span>Add Faculty</a></li>
							<li><a href="${pageContext.request.contextPath}/faculty/list"><span
									class="glyphicon glyphicon-list-alt"></span>Faculty List</a></li>
						</ul></li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><b>Contact Us</b></a>
					</li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><b>About Us</b> </a>
					</li>
				</ul>
				
				
						
						
		<%} %>			
				
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><b><%=welcomeMsg%></b></a>
						<%if(userLoggedIn){ %>
						<li><a style="color: red" href="${pageContext.request.contextPath}/user/logout">
									<span style="color: blue" class="glyphicon glyphicon-log-out"></span>
									LogOut
							</a></li>
							<%}else{ %>
							<li><a style="color:blue;" href="${pageContext.request.contextPath}/user/login">
									<span style="color: blue" class="glyphicon glyphicon-log-in"></span>
									Login
							</a></li>
							<%} %>
						</ul>
			</div>
		
			
			


			




		</div>

	</div>
	</nav>
</html>