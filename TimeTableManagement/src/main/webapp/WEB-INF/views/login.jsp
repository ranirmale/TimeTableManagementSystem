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
 <h1>Login Customer</h1>
<table>  
     <s:form commandName="userData" action="${pageContext.request.contextPath}/user/login" method="post">
     <tr>
     <td>Mail ID:</td>
     <td><s:input path="mailId"/></td>
     </tr>
     <tr>
     <td>Password:</td>
     <td><s:input path="password"/></td>
     </tr>
     <tr>
      <td></td>
      <td><input type="submit" value="Login" /></td>
      </tr>
      <tr>
       <td></td>
       <td></td>
      </tr>
       
      </s:form>
      <tr>
      <td></td>
      <td><a href="${pageContext.request.contextPath}/user/register">Register</a>
      <a href="${pageContext.request.contextPath}/">Home</a></td>
      </tr>
     </table>
    <div></div>
    <div>
      <p style="color:red;">${failed}</p> 
    </div>
    
</div>	
</body>
</html>