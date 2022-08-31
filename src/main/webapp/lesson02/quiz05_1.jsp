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
		double number = Integer.valueOf(request.getParameter("number"));
		
		String[] length = request.getParameterValues("length");
		
		
	
	%>

	<div class="container">
		<h2>길이 변환 결과 <br>
		<%= number %> cm
		</h2>
		<hr>
		
		<h2>
		<%
		
		if ( length != null ) {
			
			for (int i = 0; i < length.length; i++) {
				
				if ( length[i].contains("inch")) {
					
					 number = number / 2.54;
					 out.println(number + "in <br>"); 
				} else if ( length[i].contains("yard")) {
					
					number = number / 91.44;
					 out.println(number + "yd <br>");
				} else if ( length[i].contains("pit")) {
					
					number = number / 30.48;
					 out.println(number + "ft <br>");
				} else  if ( length[i].contains("meter")) {
					
					number = number / 100.0;
					 out.println(number + "m <br>");
				}
				
			}
		}
		
		%>
		</h2>
	</div>
</body>
</html>