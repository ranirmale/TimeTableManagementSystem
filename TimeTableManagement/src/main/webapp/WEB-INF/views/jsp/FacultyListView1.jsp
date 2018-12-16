<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Faculty List</title>
</head>
<body>
    <div align="center">
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
    </div>
</body>
</html>