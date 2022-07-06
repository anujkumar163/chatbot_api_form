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
<script src="https://www.w3schools.com/lib/w3.js"></script>

<style>
body {
  font: 15px arial, sans-serif;
  background-color: #d9d9d9;
  padding-top: 15px;
  padding-bottom: 15px;
  background-color: lightblue;
  background-image: url("/image/videoposter.jpg" height="50" width="50");
  background: linear-gradient(-45deg, white 30%, rgb(216, 183, 226) 0%);
}
#bodybox {
  margin-top: 400px;
  margin-left: 1000px;
  max-width: 550px;
  font: 15px arial, sans-serif;
  background-color: white;
  border-style: solid;
  border-width: 1px;
  padding-top: 20px;
  padding-bottom: 25px;
  padding-right: 25px;
  padding-left: 25px;
  box-shadow: 5px 5px 5px grey;
  border-radius: 15px;
}
#chatborder {
  border-style: solid;
  background-color: #f6f9f6;
  border-width: 3px;
  margin-top: 20px;
  margin-bottom: 20px;
  margin-left: 20px;
  margin-right: 20px;
  padding-top: 10px;
  padding-bottom: 15px;
  padding-right: 20px;
  padding-left: 15px;
  border-radius: 15px;
}
.chatlog {
   font: 15px arial, sans-serif;
}
#chatbox {
  font: 17px arial, sans-serif;
  height: 22px;
  width: 100%;
  background: linear-gradient(-45deg, white 30%, rgb(116, 200, 216) 0%);
}
h1 {
  margin: auto;
}
pre {
  background-color: #f0f0f0;
  margin-left: 20px;
}
#hidebtn{
	margin-left: 1000px;
	margin-: 500px;
}
</style>

</head>
<body>
<!-- 	<form action="search"  method="post">
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
	-->
	
	<div id='bodybox'>
  	<div id='chatborder'>
	<p id="chatlog5" class="chatlog">&nbsp;</p>
    <p id="chatlog4" class="chatlog">&nbsp;</p>
    <p id="chatlog3" class="chatlog">&nbsp;</p>
    <p id="chatlog2" class="chatlog">&nbsp;</p>
    <p id="chatlog1" class="chatlog">&nbsp;</p>
	
	<form  action="searchque"  method="post">
	<input type="text" value="${que.ans}" placeholder="Hi there! Type here to talk to me."/><br><br><br>
	Ask Ques:<input type="text" name="que" id="chatbox"  placeholder="Hi there! Type here to talk to me."/><br><br>
	<input type="submit" value="ask me">
	
	
	</form>
	
	</div>
	</div><br>

	<p>
	<button type="button"  id ="hidebtn" class="btn btn-info" onclick="w3.toggleShow('#bodybox')">ChatBot</button>
	</p>
	
	
	
</body>
</html>