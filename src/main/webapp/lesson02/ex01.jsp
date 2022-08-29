<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML 주석 ctrl + shift + / 으로 주석달면 되는데, 소스보기에서 보임-->
	<%-- JSP 주석  <% 안에 -- 두개 넣으면 된다. 소스보기에서 안보임!!! 이걸로 주석 달아야함.--%>
	
	<%
		//스크립틀릿이라고 함. 이 공간은
		//여기서 부터는 java가 해당됨. java 주석도 먹힘.
		int sum = 0;
		for(int i =1; i <= 10; i ++) {
			sum += i;
		}
	%>
	
	<strong>합계 : </strong>
	<input type="text" value="<%=sum%>">
	<br>
	
	<%!
		//선언문 - Person ... 클래스 또는 메소드 들이 선언되는 곳 ( 필드, 메소드)
		//필드
		private int num = 100;
		//메소드
		public String getHelloWorld(){
			return "hello world";
		}
	%>
	 <%=getHelloWorld() %>
	 
	 	
	
</body>
</html>