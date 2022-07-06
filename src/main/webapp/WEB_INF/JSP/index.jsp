<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search Employee</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="search"  method="post">
	<div>
	
	<label>Employee ID</label>
	
	<input type="text" name="id" placeholder="enter the ID here">
	
	<td colspan=2><button type="submit" class="btn btn-info">search</button></td>
	
	<label class="form-control">Employee Question</label>
	
	<input type="text" value="${emp.que}" class="form-control" placeholder="book question">
	
	
	<label class="form-control">Employee Answer</label>
	
	<input type="text" value="${emp.ans}" class="form-control" placeholder="book question">
	
	</div>	
	</form>
</body>
</html>