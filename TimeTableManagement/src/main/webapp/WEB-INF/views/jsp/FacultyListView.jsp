<%@page import="com.ttmgmt.domain.FacultyBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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

<link href="<spring:url value="/resources/css/rohan.css"/>" rel="stylesheet" type="text/css"/>
</head>

<body style="background-size: cover;"  class="img-responsive" >

<div class="body"> 
		<form action="${pageContext.request.contextPath}/faculty/list" method="GET">
<%@ include file="Header.jsp" %>

			<%
				String err = (String) request.getAttribute("err");
			%>



			<div class="container-fluid modal-content">

				<div class="row">

					<div class="col-sm-4"></div>

					<div class="col-sm-4" align="center" style="color: white">
						<h1>Faculty List</h1>
					</div>

					<div class="col-sm-4"></div>

				</div>

				<hr>
				<br>

				<div class="form-group row">


					<div class="row">

						<div class="col-sm-4"></div>

						<div class="col-sm-4" align="center">

							<div align="center">

								<b><font color="red"><h4><%=(err!=null)?err:""%>
											</h4></font></b> 
							</div>

						</div>

						<div class="col-sm-4"></div>
					</div>
				</div>

				<div class="row">


					<div class="col-xs-12" align="center" style="overflow-x: auto">

						<table  class="table  table-bordered table-hover">

							<thead style="background-color: black; color: white;">

								<tr>
									
									<th >S.No.</th>
									<th >Faculty Name</th>
									<th >Department</th>

									
								</tr>
							</thead>
							<tbody style="color: #fcf8e3;  background-color: rgba(0,0,0,.5);">
							
                          <c:forEach var="faculty" items="${listFaculty}">
                             <tr>
 
                              <td>${faculty.id}</td>
                              <td>${faculty.facultyName}</td>
                              <td>${faculty.department}</td>
                              </tr>
                           </c:forEach>	
								
				
							</tbody>
						</table>
					</div>
				</div>

			</div>
			
			
		</form>

 <div  style="width: 100px; height: 322px; "></div>
	<%@include file="Footer.jsp"%>
	
	</div>
</body>
</html>