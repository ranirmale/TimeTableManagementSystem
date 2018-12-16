<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Web Project</title>
        
</head>

<body>
<table width="100%" height="15%">
 <tr>
   <td><h2>**My Web Project**</h2></td>
   <td width="200px"></td>
  </tr>
</table>

<table width="100%">
<tr>
  <td width="800px" align="center"><h1>**Welcome**</h1></td>
  
  <td>
  <s:form commandName="userData" action="${pageContext.request.contextPath}/user/register" method="post">
  
  <h1>Create Account</h1>
  <table>
   <tr>
   <td>First Name</td>
   <td><s:input path="firstName"/></td>
   <td><s:errors path="firstName" cssStyle="color:red;" /></td>
   </tr>
   <tr height="10px">
   <td></td>
   </tr>
   <tr>
   <td>Last Name</td>
   <td><s:input path="lastName"/></td>
   <td><s:errors path="lastName" cssStyle="color:red;" /></td>
   </tr>
   <tr height="10px">
   <td></td>
   </tr>
   
   <tr>
   <td>Mobile Number </td>
   <td><s:input path="mobileNumber" /></td>
   <td><s:errors path="mobileNumber" cssStyle="color:red;" /></td> 
   </tr>
   <tr height="10px">
   <td></td>
   </tr>
   
   <tr>
   <td>Mail ID</td>
   <td><s:input path="mailId" /></td>
   <td><s:errors path="mailId" cssStyle="color:red;" /></td> 
   </tr>
   <tr height="10px">
   <td></td>
   </tr>
   
 <tr>
  <td>Date of Birth:</td>
  <td><select name="bDay" >
  <option>Day</option>
  <%for(int i=1;i<=31;i++){%>
  <option>
  <%=i%>
  </option>
  <%} %> 
  </select>  
  
  <select name="bMonth" >
  <option>Month</option>
  <option>Jan</option>
  <option>Feb</option>
  <option>Mar</option>
  <option>Apr</option>
  <option>May</option>
  <option>Jun</option>
  <option>Jul</option>
  <option>Aug</option>
  <option>Sept</option>
  <option>Oct</option>
  <option>Nov</option>
  <option>Dec</option>
  
  </select> 
  
  <select name="bYear" >
  <option>Year</option>
  <%for(int i=2020;i>=1920;i--){%>
  <option>
  <%=i%>
  </option>
  <%}%>
  </select>
  </td>
  </tr>	
   
<tr height="10px">  
<td></td>
</tr>

<tr>
<td>Gender:</td>
<td>
Female<s:radiobutton path="gender" value="Female" name="gender"/>
Male<s:radiobutton path="gender" value="Male" name="gender"/>
Other<s:radiobutton path="gender" value="Other" name="gender"/>
<td><s:errors path="gender" cssStyle="color:red;" /></td> 

</tr>

<tr height="10px">
<td></td>
</tr>

<tr>
 <td>Password:</td>
 <td><s:input path="password"  /></td>
 <td><s:errors path="password" cssStyle="color:red;" /></td> 
 </tr>
 
 <tr height="10px">
 <td></td>
 </tr>

 <tr>
 <td></td>
 <td>
 <input type="checkbox" name="terms"><a href="terms&condition.jsp" target="_blank">I agree terms
 and conditions </a>
 </td>
 </tr>
 
 <tr>
 <td><input type="submit" value="Create" ></td>
 <td><input type="reset" value="Clear" ></td>
 </tr>
 
</table>
</s:form>
</td>
</tr> 
</table>




</body>
</html>