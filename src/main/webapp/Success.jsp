<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
<script type="text/javascript">
	function addUser() {
		document.fn.action = "register.jsp";
		document.fn.submit();
	}
	function editUser() {
		document.fn.action = "edit";
		document.fn.submit();
	}
	function deleteUser() {
		document.fn.action = "delete";
		document.fn.submit();
	}
</script>
<style>
     .tbl {
        border-collapse: collapse;
        text-align: center;
        margin-bottom: 20px;
     }
     th {
        background-color: silver;
     }
     .tbl tr:nth-child(even) {
        background-color: #f2f2f2;
     }
     .tbl tr:hover {
        background-color: #ddd;
     }
     th, .tbl td {
        border: 1px solid;
        padding: 7px;
     }
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
    <h1 style="text-align: center;color:purple;">Customer All Details</h1>
	<form name="fn" style="border: 2px solid;border-radius:5px;background-color:teal;padding: 30px;margin: 50px;display: flex;flex-direction:column;justify-content: center;">
		<table class="tbl" align="center" style="border: 1px solid;background-color: lightblue;">
			<tr>
				<th>Sr.No.</th>
				<th>Customer Id</th>
				<th>Customer Full Name</th>
				<th>Customer UserName</th>
				<th>Customer Password</th>
				<th>Customer Mobile No</th>
			</tr>
			<c:forEach items="${data}" var="custm">
				<tr>
					<td><input type="radio" name="customerId" value="${custm.customerId }"></td>
					<td>${custm.customerId }</td>
					<td>${custm.customerName }</td>
					<td>${custm.customerUserName }</td>
					<td>${custm.customerpassword }</td>
					<td>${custm.customerMobileNo }</td>
				</tr>
			</c:forEach>
		</table>
		<table align="center">
			<tr>
				<td><button type="button" onclick="addUser()" >ADD</button></td>
				<td><button type="button" onclick="editUser()" >EDIT</button></td>
				<td><button type="button" onclick="deleteUser()" >DELETE</button></td>
			</tr>
		</table>
	</form>
</body>
</html>