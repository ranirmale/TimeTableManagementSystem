<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%-- <spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="img" value="/resources/img" />
 --%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Welcome to TTMS</title>

<style>


</style>


<link href="<spring:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>" rel="stylesheet"/>

<%-- <script src="<ss:url value="/resources/js/jquery.min.js"/>"></script> --%>

<%-- <script src="<ss:url value="/resources/js/bootstrap.min.js"/>"></script> --%>


<link href="<spring:url value="/resources/css/rohan.css"/>" rel="stylesheet" type="text/css"/>
</head>





<body style="background-size: cover;"  class="img-responsive" >
<div  align="center" style="padding-top: 30px;">
		
		
		 <a href="${pageContext.request.contextPath}/user/home">
			<h1 style="color: white; padding-top: 120px; font-family: cursive;">Time Table Managment System</h1></a>
	</div>

</body>
</html>