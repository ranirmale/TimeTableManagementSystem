<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.RandomAccess"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page import="com.ttmgmt.domain.TimeTableBean"%>	
<%@page import="com.ttmgmt.controller.TimeTableController"%>
	
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



      
        <h1>Time Table</h1>
        
        
					<div class="col-xs-12" align="center" style="overflow-x: auto">

						<table class="table  table-bordered table-hover">

							<thead style="background-color: black; color: white;">

								<tr>

									<th>Day</th>
									<th>09:00 AM to 10:00 AM</th>
									<th>10:00 AM to 11:00 AM</th>
									<th>11:00 AM to 12:00 PM</th>

								</tr>
							</thead>
                     <tbody
						style="color: #fcf8e3; background-color: rgba(0, 0, 0, .5);">
  
         
               <c:forEach var="faculty" items="${facultyName}">
                
                  <% 
                   for (int i = 1; i <= 3; i++){
                	   
                  %>
                   <td> 
                   <c:out value="${facultyName}"/>
                   </td><%
                   	if (i == 1) {
								%><tr>
									<td>Monday</td>
									<%
										} else if (i == 2) {
									%><td>Tuesday</td>
									<%
										} else if (i == 3) 
									%><td>Wednesday</td>
									<%
                                     }
									%>
									
									
                </tr>
            </c:forEach>
        </table>
    </div>


	<div>
		<%@ include file="Footer.jsp"%>
	</div>
</body>
</html>