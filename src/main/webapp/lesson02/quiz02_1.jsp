<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz02_1</title>
</head>
<body>
	
	
	<%!
	
		Date date = new Date();
		SimpleDateFormat formate = new SimpleDateFormat("HH시 mm분 ss초 입니다.");
		SimpleDateFormat formate2 = new SimpleDateFormat("yyyy년 MM월 dd일 입니다.");
	%>
	
	
	<h2>
	
	<% 
	
		if (request.getParameter("id").equals("nowtime")) {
			
			out.print("현재 시간은" + formate.format(date));
			
		} else if (request.getParameter("id").equals("nowday")) {
			
			out.print("현재 날짜는" + formate2.format(date));
		}
	
		
	%>
	
	</h2>
	
</body>
</html>