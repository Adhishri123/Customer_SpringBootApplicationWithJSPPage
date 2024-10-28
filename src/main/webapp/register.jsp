<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
<style>
   input {
      width: 100%;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  margin: 8px 0;
	  padding:12px 20px;
	  display: inline-block;
	  box-sizing: border-box;
   }
   button {
	  width: 100%;
	  background-color: #4CAF50;
	  border: none;
	  border-radius: 4px;
	  color: white;
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
	<form action="register" style="border-radius:5px;background-color:#f2f2f2;padding: 20px;margin: 100px;margin-left: 500px;margin-right: 500px;display: flex;justify-content: center;">
		<table>
			<tr>
				<td><input type="number" name="customerId" placeholder="CustomerId"></td>
			</tr>
			<tr>
				<td><input type="text" name="customerName" placeholder="Customer Full Name"></td>
			</tr>
			<tr>
				<td><input type="text" name="customerUserName" placeholder="UserName"></td>
			</tr>
			<tr>
				<td><input type="password" name="customerpassword" placeholder="PassWord"></td>
			</tr>
			<tr>
				<td><input type="tel" name="customerMobileNo" placeholder="Customer MobileNo"></td>
			</tr>
			<tr align="center">
				<td>
					<button type="submit" >SAVE</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>