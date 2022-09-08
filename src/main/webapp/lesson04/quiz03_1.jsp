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
<style>


header { background-color: #fd7e14;  font-weight: bold;

}

</style>

</head>
<body>

<%
	//1. db 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	
	//2. select db
	
	String selectQuery = "select * from used_goods u left join seller s on u.sellerId = s.id";
	ResultSet result = ms.select(selectQuery);
	
%>


	<div class="container">
		
		<header>
			<div>
				<h1 class="text-center text-light mt-4">HONG당무 마켓</h1>
			</div>
			
			<nav class="d-flex align-items-center mt-4">
				<ul class="nav nav-fill w-100 font-weight-bold text-light">
					<li class="nav-item"> <h3>리스트</h3></li>
					<li class="nav-item"><h3>물건올리기</h3></li>
					<li class="nav-item"><h3>마이페이지</h3></li>
				</ul>
			</nav>
		</header>
	
		
		
		<%
			while(result.next()) {
			
		
		
		%>
		
		
		
		
		
		
		<div class="card-group">
			  <div class="card">
				    <img src="<%=result.getString("pictureUrl") %>" class="card-img-top">
				    <div class="card-body">
				      <h5 class="card-title"><%=result.getString("title") %></h5>
				      <p class="card-text"><%= result.getInt("price") %></p>
				      <p class="card-text"><small class="text-muted"><%= result.getString("nickname") %></small></p>
				    </div>
			  </div>
		</div>	 
			
			
		<%
		
			}
		
		%>	
			
			
	
	</div>










<%
	// db 연결해제
	ms.disconnect();

%>



</body>
</html>