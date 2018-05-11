<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>
	
	
	<div id="wrapper">
		<div id="header">
			<h2>All Customers</h2>
		</div>
	</div>
	<div id="container">
	
		<div id="content">
		
				<input type="button" value="Add Customer" class="add-button" onclick="window.location.href='showAddForm'; return false;">
		
				<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				
				<c:forEach var="temp" items="${customers}">
				
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${temp.id}" />
					</c:url>
					
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${temp.id}" />
					</c:url>
				
					<tr>
						<td>${temp.firstName}</td>
						<td>${temp.lastName}</td>
						<td>${temp.email}</td>
						
						<td><a href="${updateLink}">Update</a></td>
						<td>|</td>
						<td><a href="${deleteLink}" onclick="if (!(confirm('Are you sure want to delete this customer ?'))) return false">Delete</a></td>
					</tr>
				</c:forEach>
				
			</table>
		</div>
	
		
	
	</div>
</body>
</html>