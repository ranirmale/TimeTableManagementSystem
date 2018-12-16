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



    <div align="center">
    <h2>Add Time Table</h2>
    <table>
    
    <s:form action="${pageContext.request.contextPath}/timetable/save" method="POST">
      <tr>
      <td>Faculty Name:</td>
       <td><select name="facultyName">
            <c:forEach items="${listFaculty}" var="faculty">
                  
            <option value="${faculty.facultyName}"><c:out value="${faculty.facultyName}"/></option>            
                
            </c:forEach>
        </select>
        </td>
      </tr>  
      <tr>
        <td> Subject Name:</td>
         <td><select name="subjectName">
            <c:forEach items="${listSubject}" var="subject">
                     
            <option value="${subject.subjectName}"><c:out value="${subject.subjectName}"/></option>            
                
            </c:forEach>
        </select>
        </td>
      </tr>
      <tr>
          <td></td>
          <td><input type="submit" value="Submit" />
          <input type="reset" value="Clear" ></td>
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