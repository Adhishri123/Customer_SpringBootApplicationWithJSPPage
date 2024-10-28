<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page</title>
<style>
   button {
	  width: 100%;
	  background-color: #f2f2f2;
	  border: none;
	  border-radius: 4px;
	  color: black;
	  margin: 8px 0;
	  padding:7px 10px;
	  cursor: pointer;
   }
   button:hover {
	  background-color: #45a049;
   }
</style>
</head>
<body>
<form action="log" style="border:none;border-radius:5px;background-color:#ddd;padding: 20px;margin: 100px;margin-left: 500px;margin-right: 500px;display: flex;justify-content: center;">
    <table >
        <tr>
            <td>
                <input type="text" name="customerUserName" placeholder="UserName">
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="customerpassword" placeholder="PassWord">
            </td>
        </tr>
        <tr align="center">
            <td>
                <button type="submit">LOGIN</button>
            </td>
        </tr>
        <tr align="center">
            <td>
                <a href="reg" style="color: black;">New User</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>