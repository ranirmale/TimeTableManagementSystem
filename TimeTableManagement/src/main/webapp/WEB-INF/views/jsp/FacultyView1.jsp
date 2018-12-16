<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login User</title>
</head>
<body>
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
</body>
</html>