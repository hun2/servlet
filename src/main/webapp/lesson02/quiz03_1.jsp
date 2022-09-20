<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>


	<%
	
	int height= Integer.valueOf(request.getParameter("height"));
	int weight = Integer.valueOf(request.getParameter("weight"));
	
	double result = weight /((height / 100.0) * (height / 100.0))   ;
	String answer = null;
	if ( result >= 31) {
		answer = "비만";
	} else if ( result >= 26 && result <= 30) {
		answer = "과체중";
	} else if ( result >= 21 && result <= 25) {
		answer = "정상";
	} else {
		answer = "저체중"; 
	}
		
	%>

	<div class="container">
	
			
			<h1><b>BMI</b> 측정 결과</h1>
			
		<div class="display-3">
			당신은 <span class="text-info"> <%= answer %> </span> 입니다. 
		</div>
		
			BMI 수치 : <%= result %>
	</div>


</body>
</html>