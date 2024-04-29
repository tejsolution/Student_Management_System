<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    form {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin-bottom: 8px;
    }

    input {
      width: 100%;
      padding: 8px;
      margin-bottom: 16px;
      box-sizing: border-box;
    }

    button {
      background-color: #4caf50;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }

    button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
	
	<form action="/update/${std1.id}" method="post">
	<lable>Name</lable>
	<input type="text" id="name" name="name" value="${std1.name }">
	
	<lable>City</lable>
	<input type="text" id="city" name="city" value="${std1.city}">
	
	<lable>Username</lable>
	<input type="text" id="username" name="username" value="${std1.username }">
	
	<lable>Password</lable>
	<input type="password" id="password" name="password" value="${std1.password }">
	
	<button type="submit">Update</button>
	</form>
</body>
</html>