<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<style>
    h1 {
      text-align: center;
      color: maroon;
    }
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
<h1>Edit Customer Data</h1>
<form action="update" style="border-radius:5px;background-color:#f2f2f2;padding: 20px;margin: 50px;margin-left: 500px;margin-right: 500px;display: flex;justify-content: center;">
     <table>
         <tr>
             <td>
                 <input type="number" name="customerId" value="${data.customerId }" readonly="readonly">
             </td>
         </tr>
         <tr>
             <td>
                 <input type="text" name="customerName" value="${data.customerName }" >
             </td>
         </tr>
         <tr>
             <td>
                 <input type="text" name="customerUserName" value="${data.customerUserName }" >
             </td>
         </tr>
         <tr>
             <td>
                 <input type="password" name="customerpassword" value="${data.customerpassword }" >
             </td>
         </tr>
         <tr>
             <td>
                 <input type="tel" name="customerMobileNo" value="${data.customerMobileNo }" >
             </td>
         </tr>
         <tr align="center">
             <td>
                 <button type="submit">UPDATE</button>
             </td>
         </tr>
     </table>
</form>
</body>
</html>