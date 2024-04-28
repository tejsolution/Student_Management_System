<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Page</title>
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

  <form action="addstudent" method="post">
    <label for="id">ID:</label>
    <input type="text" id="id" name="id" required>

    <label for="name">NAME:</label>
    <input type="text" id="name" name="name" required>

    <label for="city">CITY:</label>
    <input type="text" id="city" name="city" required>
    
     <label for="username">USERNAME:</label>
    <input type="text" id="username" name="username" required>
    
     <label for="password">PASSWORD:</label>
    <input type="password" id="password" name="password" required>

    
    <button type="submit">Register</button>
  </form>

</body>
</html>

