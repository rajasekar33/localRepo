<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
</head>
<body>


	<div id="wrapper">
		<div id="header">
			<h2>Customer add form</h2>
		</div>
	</div>
	<div id="container">
	
		<h3>Save Customer</h3>
		
		<form:form action="saveForm" modelAttribute="customer" method="POST">
		
			<table>
			
				<tbody>
				
					<form:hidden path="id"/>
				
					<tr>
						<td>First Name: </td>
						<td><form:input path="firstName" /></td>
					</tr>
					
					<tr>
						<td>Last Name: </td>
						<td><form:input path="lastName" /></td>
					</tr>
					
					<tr>
						<td>Email: </td>
						<td><form:input path="email" /></td>
					</tr>
					
					<tr>
						
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
				
				</tbody>
				
			</table>
		
		</form:form>
	
	</div>

</body>
</html>