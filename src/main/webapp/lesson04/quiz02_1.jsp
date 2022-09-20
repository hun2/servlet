<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
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
	//db 연결부터
	
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	//select db
	
	String selectQuery = "select * from url order by id desc";
	ResultSet result = ms.select(selectQuery);
	
	

%>
	
	<div class="container">
		<table class="table text-center">
		
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th>삭제</th>
				</tr>
			</thead>
			
			
			<tbody>
				
				<%
				
					while(result.next()) {
						
					
				
				%>
				
				
				
				<tr>
					<td><%=result.getString("name") %></td>
					<td><a href="<%=result.getString("url") %>"><%=result.getString("url") %></a></td>
					<!-- 새로운 페이지를 새탭으로 띄우고 싶으면 tagert="_blank" 하면된다.  -->
					<td>
						<a href="/lesson04/quiz02_delete?id=<%=result.getInt("id")%>"> 삭제하기 </a>
					</td>
				</tr>
			
			
			
				<%
					}
				
				%>
			</tbody>
		
		</table>
	
	
	</div>





<%
	//db 연결해제
	ms.disconnect();

%>

</body>
</html>