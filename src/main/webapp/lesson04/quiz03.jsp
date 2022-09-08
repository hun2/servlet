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

//1. 디비연결
MysqlService ms = MysqlService.getInstance();
ms.connect();



//2.select db

String selectQuery = "select * from seller";
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
			
			
	
		<section>
			
			<p>
				<h1>물건 올리기</h1>			
			</p>
			
			<form method="post" action="/lesson04/quiz03_insert">
				<div class="d-flex justify-content-between">
					<select class="form-select col-3" name="id">
						<option selected>-아이디 선택-</option>
						  	<%
						  
						  		while(result.next()) {
						  		
						  	%>
						  
						 	<option value="<%=result.getInt("id") %>" ><%=result.getString("nickname") %></option>
						 
						  
						  	<%
						  
						 	 	}
						  	%>
					</select>
					
					<input type="text" class="form-control col-3 ml-4" placeholder="제목" name="title">
					<div class="input-group col-3 ml-4">
					  <input type="text" class="form-control " placeholder="가격" name="price">
					  <span class="input-group-text">원</span>
					</div>
					
				</div>
				
				<textarea rows="5" cols="150" class="mt-4 col-12" placeholder="설명을 입력하세요" name="description"></textarea>
				
				<div class="input-group mt-4">
				  <span class="input-group-text">이미지 url</span>
				  <input type="text" class="form-control" name="pictureUrl">
				</div>
				
				<button type="submit" class="btn col-12 mt-3">저장</button>
			</form>
		</section>
		
		
		<footer>
			<div class="text-center mt-5">
				Copyright © kihunzzang 2022
			</div>
		</footer>
	</div>
	
	
	
<%

//디비 해제
ms.disconnect();

%>
</body>
</html>