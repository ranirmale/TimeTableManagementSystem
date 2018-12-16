<%@page import="com.ttmgmt.domain.SubjectBean"%>
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
		<form action="${pageContext.request.contextPath}/subject/list" method="GET">
<%@ include file="Header.jsp" %>
			
<%String err=(String)request.getAttribute("err"); %>



			<div class="container-fluid modal-content">

				<div class="row">

					<div class="col-sm-4"></div>

					<div class="col-sm-4" align="center" style="color: white">
						<h1 style=" color: black;">Subject  List</h1>
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
									<th >Subject Name</th>
									<th >Subject Code</th>

									
								</tr>
							</thead>
							<tbody style="color: #fcf8e3;  background-color: rgba(0,0,0,.5);">
							<c:forEach var="subject" items="${listSubject}">
                             <tr>
 
                              <td>${subject.id}</td>
                              <td>${subject.subjectName}</td>
                              <td>${subject.subjectCode}</td>
                              </tr>
                           </c:forEach>		
								
							</tbody>
						</table>
					</div>
				</div>

			</div>
			
			
		</form>

 <div  style="width: 100%; height: 322px; "></div>
	<%@include file="Footer.jsp"%>
	
	</div>
</body>
</html>