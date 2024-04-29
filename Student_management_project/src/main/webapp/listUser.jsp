
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
	<table border="2">

		<tr>
			<th>STUDENT ID</th>
			<th>STUDENT NAME</th>
			<th>STUDENT CITY</th>
			<th>STUDENT USERNAME</th>
			<th>STUDENT PASSWORD</th>
			<th>DELETE</th>
			<th>EDIT</th>
		</tr>
		<c:forEach var="std" items="${e_data}">
		

			<tr>
				<td>${std.id}</td>
				<td>${std.name}</td>
				<td>${std.city}</td>
				<td>${std.username}</td>
				<td>${std.password}</td>
				<td><a href="<c:url value='/edit/${std.id}'/>">Update</a></td>

				<td><a href="<c:url value='/${std.id}'/>">Delete</a></td>

			</tr>

		</c:forEach>

	</table>
</body>
</html>