<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>	
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
	
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
<table width="100%" height="15%">
 <tr>
   <td><h2>**My Web Project**</h2></td>
   <td width="200px"></td>
  </tr>
</table>

<div align="center">
 <h1>Add Faculty</h1>
<table>  
     <s:form commandName="facultyData" action="${pageContext.request.contextPath}/faculty/save" method="post">
     <tr>
     <td>Faculty Name:</td>
     <td><s:input path="facultyName"/></td>
     <td><s:errors path="facultyName" cssStyle="color:red;" /></td>
     </tr>
     <tr>
     <td>Department:</td>
     <td><s:input path="department"/></td>
     <td><s:errors path="department" cssStyle="color:red;" /></td>
     </tr>
     <tr>
      <td></td>
      <td><input type="submit" value="Submit" />
      <input type="reset" value="Clear" ></td>
      </tr>
      <tr>
       <td></td>
       <td></td>
      </tr>
       
      </s:form>
      
     </table>
    <div></div>
    <div>
      <p style="color:red;">${success}</p> 
    </div>
    
</div>	




	<div>
		<%@ include file="Footer.jsp"%>
	</div>
</body>
</html>