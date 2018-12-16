<%@page import="com.ttmgmt.domain.HTMLUtility"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

	<%@ include file="Header.jsp"%>


	 <jsp:useBean id="bean" class="com.ttmgmt.domain.TimeTableBean"
		scope="request"></jsp:useBean>


	<%
		List faculty = (List) request.getAttribute("facultyList");
		List subject = (List) request.getAttribute("subjectList");
		String facultyName = (String) request.getAttribute("FacultyName");
		String subjectName = (String) request.getAttribute("SubjectName");
	%>
	<div class="body">
		<div class="modal-dialog  orsform_modal-dialog">
			<div class="modal-content">


				<div class="modal-heading">

					<h2 class="text-center">Add TimeTable</h2>

					<center>
						<b><font class="text-center" color="red"> </font></b> <b><font
							color="black"></font></b>
					</center>
				</div>

				<hr>


				<div class="modal-body">
					<form action="TimeTableCtl" role="form" method="post" class="form">



						<div class="form-group">
							<label for="login">Faculty Name</label>
							<div class="input-group">
								<span class="input-group-addon"> <span
									class="glyphicon glyphicon-user"></span>
								</span>
								<%=HTMLUtility.getList("facultyId", String.valueOf(bean.getFacultyId()), faculty)%>
							</div>
							<b><font color="red"> <%=(facultyName != null) ? facultyName : ""%></font></b>
						</div>


						<div class="form-group">
							<label for="password">SubjectName</label>
							<div class="input-group">
								<span class="input-group-addon"> <span
									class="glyphicon glyphicon-lock"></span>
								</span>
								<%=HTMLUtility.getList("subjectId", String.valueOf(bean.getSubjectId()), subject)%>

							</div>
							<b><font color="red"> <%=(subjectName != null) ? subjectName : ""%></font></b>
						</div>

						<div class="form-group text-center">
							<input type="submit" class="btn btn-success btn-lg"
								value="Submit"> <input type="reset"
								class="btn btn-success btn-lg" ss value="Reset"><br>
						</div>

					</form>
				</div>


			</div>


		</div>


		<div style="width: 100px; height: 256px;"></div>

		<%@ include file="Footer.jsp"%>


	</div>
</body>
</html>