<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>
</head>
<body>
	<!-- Using Scriptlet , this same as we update without scripting -->
	<!-- Person is : <%=((foo.other.Person) request.getAttribute("person_object")).getName()%> -->
	<br>
	<!-- <%foo.other.Person p = (foo.other.Person) request.getAttribute("person_object");%> -->
	<!-- Person is :	<%=p.getName()%> -->
	<!-- Now lets update old fashion -->
	
	<!--  we using standart action (notice jsp:) -->
	<!-- id we make name like servlet tag in DD to call it later we nee give it name -->
	<!--  we give class where this Person class is located -->
	<!--  and scope, same like with attributes -->
	<jsp:useBean id="person_object" class="foo.other.Person"
		scope="request" />
	Person created by servlet:
	<jsp:getProperty name="person_object" property="name" />
	<!--  again jsp: (standart action) -->
	<!-- name have to match with id !!! -->
	<!--  and property is just from GETTERS and SETTERS taked prefix get, set and then starting with lower case
	will be name -->
</body>
</html>