<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>
</head>
<body>

<h1></h1>
<div>
 <div align="right">
 <a href="${pageContext.request.contextPath}/user/logout"><b>logout</b></a>
</div>
<div align="left">
 Welcome <b style="color:red;">${user.firstName}</b>
</div>
</div>
<div align="center">
<h1>
You are successfully logged in!!!
</h1>
</div>
</body>
</html>