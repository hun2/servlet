<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
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
List<Map<String, Object>> list = new ArrayList<>();
Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
list.add(map);

%>	

<div class="container">

	<h2 class="text-center"> 검색 결과</h2>
	<table class="table text-center">
		<thead>
			<tr>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</tr>
		</thead>
		<tbody>
		
			
			<%-- 방법 1번 코드 간결화--%>
			
			<%
			//	String text = request.getParameter("text");
			//	String check = request.getParameter("check");
			//
			//	for (int i = 0; i < list.size(); i++) {
			//		double point = (double) list.get(i).get("point");
			//		if (!list.get(i).get("menu").equals(text) || ("on".equals(check) && point < 4.0)) {
			//			continue;
			//		}
			//		String company = (String) list.get(i).get("name");
			%>
			
			<%--  
				<tr>
					<td><%=text%></td>
					<td><%=company%></td>
					<td><%=point%></td>
				</tr>
			 --%>
			<%
			//	}
			%>
			
			
			
				
			
			<%-- 방법 2번 생각나는 대로 한 거 --%>
			<%
				
				String text = request.getParameter("text");
				String check = request.getParameter("check");
				
				for ( int i = 0; i< list.size(); i++) {
					String company = (String)list.get(i).get("name");
					double point = (double)list.get(i).get("point");
					if ( "on".equals(check)) {
						if (point > 4.0) {
							if(list.get(i).get("menu").equals(text)) {
			%>
		
			<tr>
				<td><%=text %></td>
				<td><%=company%></td>
				<td><%=point %></td>
			<tr>
		
			<%
							}
						}
					} else {
						if(list.get(i).get("menu").equals(text)) {
							
			%>
			<tr>
				<td><%=text %></td>
				<td><%=company%></td>
				<td><%=point %></td>
			<td>
			<%
							
						}
						
					}
				}
			%>
			
			
		</tbody>
	
	
	</table>

</div>


</body>
</html>