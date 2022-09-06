<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%
//아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

//아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);





%>

<%
	//상세 정보를 보여줄 target map 세팅
	Map<String,Object> target = null;


	//1. 목록에서 클릭한 경우 > id 로 값으로 찾는경우
	
		if (request.getParameter("id") != null) {
			int paramid =  Integer.valueOf(request.getParameter("id"));
			
			for ( Map<String, Object> music : musicList) {
				
				
				if (paramid == (int)music.get("id")) {
					target = music;
					break;
				}
			}
		}
	
	//2. 상단 검색으로 들어 온 경우 > search 값으로 

		if ( request.getParameter("search") != null) {
			
			
			String paramSearch = request.getParameter("search");
			for ( Map<String, Object> music : musicList) {
				
				if (paramSearch.equals((String)music.get("title"))) {
					
					target = music;
					break;
				}
			}
		}
%>


<%
	//검색을 했을때 리스트에 있는 키워드면 출력
	if (target != null) {
%>

<section class="contents">
	<h3 class="mt-4">곡정보</h3>
	<div class="d-flex border border-success p-3 mt-4">
		<div class="col-1">
			<img src="<%=target.get("thumbnail")%>" alt="썸네일" width="150">
		</div>
		<div class="col-5">
			<div class="display-4"><%=target.get("title") %></div>
			<div class="font-weight-bold text-success"><%=target.get("singer") %></div>
			<div class="d-flex text-secondary">
				<div>
					<div>앨범</div>
					<div>재생시간</div>
					<div>작곡가</div>
					<div>작사가</div>
				</div>
				<div class="ml-4">
					<div><%= target.get("album") %></div>
					<div><%= (int)target.get("time") / 60 %> : <%= (int)target.get("time") % 60 %></div>
					<div><%= target.get("composer") %></div>
					<div><%= target.get("lyricist") %></div>
				</div>
			</div>
		</div>
	</div>
	
	<h3 class="mt-4">가사</h3>
	<hr>
	<div>가사 정보 없음</div>
	
</section>



<%
	//만약 리스트에 없는 제목을 검색하면 정보없음 출력
	} else {
		
%>

<section class="contents">
	<h1>정보없음</h1>
</section>



<%
	}
%>