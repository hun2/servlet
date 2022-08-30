<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h2>사칙 연산 계산기</h2>
		<form method="post" action="/lesson02/quiz04_1.jsp" >
		
			<div class="d-flex ">
				<input type="text" class="form-control col-2 mr-2" name="number" placeholder="숫자를 입력하새요">
				<select name="yes" class="form-control col-1 mr-2">
					<option> * </option>
					<option> - </option>
					<option> + </option>
					<option> - </option>
				</select>
				<input type="text" class="form-control col-2 mr-2" name="answer" placeholder="숫자를 입력하새요">
				<button type="submit" class="btn btn-info mr-2">제출하기</button>
			
			</div>
		</form>
	</div>
</body>
</html>