<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<h2>오늘 부터 1일</h2>
	
	<%
	Calendar today =  Calendar.getInstance();
	Calendar today2 = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 yy일");
	
	int number = 100;
	
		for ( int i = 1; i<=10; i++) {
			

			today.add(Calendar.DATE, number);
			
			
		
	
	%>
		<%= number  %> 일 : <%=sdf.format(today.getTime()) %> <br>
		
	
	<%
			number = number + 100;
		}
	%>


</body>
</html>