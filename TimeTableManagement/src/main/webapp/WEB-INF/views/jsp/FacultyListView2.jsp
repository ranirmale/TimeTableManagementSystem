<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>	
	
<%-- <spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="img" value="/resources/img" />
 --%>	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<spring:url value="/resources/css/Bootstrap.css"/>" rel="stylesheet">
<%-- <script src="<ss:url value="/resources/js/bootstrap.min.js"/>"></script> --%>


<link href="<spring:url value="/resources/css/rohan.css"/>" rel="stylesheet" type="text/css"/>
</head>

<body style="background-size: cover;"  class="img-responsive" >

	<%@ include file="Header.jsp"%>




        <h1>Faculty List</h1>
        
        <table border="1">
 
            <th>ID</th>
            <th>Faculty Name</th>
            <th>Department</th>
            
 
            <c:forEach var="faculty" items="${listFaculty}">
                <tr>
 
                    <td>${faculty.id}</td>
                    <td>${faculty.facultyName}</td>
                    <td>${faculty.department}</td>
                </tr>
            </c:forEach>
        </table>
    


	<div>
		<%@ include file="Footer.jsp"%>
	</div>
</body>
</html>