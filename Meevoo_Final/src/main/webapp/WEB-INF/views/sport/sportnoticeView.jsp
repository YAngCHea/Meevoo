<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>체육시설 상세페이지</title>
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main_kmh.css" />
	</head>
	<body class="is-preload">
			
			<!-- 찜하기 알림 -->
			<script>
				function sPickBtn(){
					alert("찜하기가 설정되었습니다.");
				}
			</script>
			
			<!-- 리뷰쓴거 등록하기  -->
			<script>
				function reviewBtn(){
					alert("리뷰가 등록되었습니다.");
				}
			</script>
			
			<!-- 리뷰쓴거 수정하기  -->
			<script>
				function fixBtn(){
					alert("리뷰를 수정합니다.");
				}
			</script>
			
			<!-- 리뷰쓴거 삭제하기  -->
			<script>
				function deleteBtn(){
					alert("리뷰가 삭제되었습니다.");
				}
			</script>
			
			<!-- 수정버튼 누르고 저장하면  -->
			<script>
				function saveBtn(){
					alert("리뷰 수정이 완료되었습니다.");
				}
			</script>
			
			<!-- 수정버튼 누르고 취소하기  -->
			<script>
				function cancleBtn(){
					alert("리뷰 수정이 취소되었습니다.");
				}
			</script>
			
			<!-- 신고버튼 누르기  -->
			<script>
				function reportBtn(){
					alert("리뷰글이 신고 되었습니다.");
				}
			</script>
			

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index" class="logo"><strong>Meevoo</strong> by ?</a>
									<ul class="icons">
										<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
									</ul>
								</header>

							<!-- Banner -->
								<section id="banner">
									<div class="content">
										<header style="text-align: center;">
											<h1>Meevoo 체육시설 상세 페이지</h1>
											<p>section 있을때마다 아래와 같이 줄이 생김</p>
										</header>
									</div>
								</section>

							<!-- Section -->
								<section>
									<!-- 상세설명 css -> main.css(63번째)  -->
									<div class="viewHead">
										<div class="subject">
											<ul>
												<li>${sdto.sfno}. ${sdto.sfnm}</li>
											</ul>
										</div>
										<div class="day">
											<p class="txt">운동종목<span>${sdto.scate}</span></p>
											<p class="txt">동이름<span>${sdto.dongcate}</span></p>
										</div>
										<div class="day">
											<p class="txt">주소<span>${sdto.addr}</span></p>
										</div>
										<div class="day">
											<c:if test="${sdto.telno == 'NA'}">
												<p class="txt">전화번호<span>X</span></p>
											</c:if>
											<c:if test="${sdto.telno != 'NA'}">
												<p class="txt">전화번호<span>02) ${sdto.telno}</span></p>
											</c:if>
											<c:if test="${sdto.homepage == null}">
												<p class="txt">홈페이지URL<span>X</span></p>
											</c:if>
											<c:if test="${sdto.homepage != null}">
												<p class="txt">홈페이지URL<span><a href="${sdto.homepage}" style="color: blue;">${bdto.homepage}</a></span></p>
											</c:if>
										</div>
										<div class="day">
											<p class="txt">별점<span>${sdto.savgstar}</span></p>
											<p class="txt">별점<span>★★★★★</span></p>
										</div>
										<div class="day">
											<c:if test="${sdto.wifi == 'O'}">
												<p class="txt">와이파이보유여부</br><span>dfdf</span></p>
											</c:if>
											<c:if test="${sdto.wifi == 'X'}">
												<p class="txt">와이파이보유여부</br><span>dfdf</span></p>
											</c:if>
											<p class="txt">반려동물가능여부<span>${sdto.pet}</span></p>
											<p class="txt">주차장존재여부<span>${sdto.parking}</span></p>
											<p class="txt">주출입구경사여부<span>${sdto.slope}</span></p>
										</div>
										<br>
									<!-- 지도 데이터 불러오기 -->
									<div id="map" style="width:70%;height:350px;"></div>
									
									</div>
									<br>
									<!-- Buttons 수정 ->  main.css (1294번째)-->
									<ul class="actions">
										<li><a class="button" onclick="sPickBtn()">찜하기</a></li>
										<li><a href="sportnotice" class="button primary">시설 목록으로</a></li>
									</ul>
								</section>
								
								<!-- 시설 리뷰 -->
								<!-- 리뷰 css -> main.css (78번째) -->
								<section>
									<div class="content" style="text-align: center;">
										<h4>${sdto.sfnm} 시설 리뷰</h4>
									</div>
									<div class="replyBox">
										<br>
										<ul>
											<li class="in">
												<li class="name">총 <span>${comList.size() }</span> 3개의 댓글이 달려있습니다.</li>
												<form name="myform" id="myform" method="post" >
													<fieldset>
														<!-- 별점 수정 main.css 1192번 -->
														<span class="text-bold">별점을 선택해주세요</span>
														<input type="radio" name="star" value="5" id="star1"><label
															for="star1">★</label>
														<input type="radio" name="star" value="4" id="star2"><label
															for="star2">★</label>
														<input type="radio" name="star" value="3" id="star3"><label
															for="star3">★</label>
														<input type="radio" name="star" value="2" id="star4"><label
															for="star4">★</label>
														<input type="radio" name="star" value="1" id="star5"><label
															for="star5">★</label>
													</fieldset>
													<div style="display: flex;">
														<textarea class="col-auto form-control" type="text" id="reviewContents"
																  placeholder="시설 리뷰글을 작성해주세요!" ></textarea>
																  <!-- 버튼 크기 수정 main.css 1644번째 -->
													    <li class="btn"><a onclick="reviewBtn()" class="button primary large">등록</a></li>
													</div>
												</form>	
											</li>
										</ul>
									</div>
									
								<fieldset>
									<div class="replyBox">
										<!-- 2. 내가 쓴 글 부분  -->
										<ul>
											<li class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hong <span>&nbsp;&nbsp;&nbsp;[2023-07-06&nbsp;&nbsp;15:01:59]</span>
											
											</li>
											<li class="txt">20대 / 남자 / 구로</li>
											<br>
											<li class="txt"> 별점 ★ ★ ★ ★ ★</li>
											<li class="txt"> 내가 쓴 글은 수정, 삭제 가능</li>
											<li class="btn">
												<a onclick="fixBtn()" class="button primary small">수정</a>
												<a onclick="deleteBtn()" class="button small">삭제</a>
											</li>
										</ul>
										
										<!-- 3. 내가 쓴 글 수정 부분 -->
										<ul>
											<li class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hong <span>&nbsp;&nbsp;&nbsp;[2023-07-06&nbsp;&nbsp;15:01:59]</span></li>
											<li class="txt">20대 / 남자 / 구로</li>
											<br>
											<li class="txt"> 별점 ★ ★ ★ ★ ★</li>
											<div>
												<textarea class="col-auto form-control" type="text" id="fixContents"
													  placeholder="작성한 시설 리뷰글을 수정해주세요!" ></textarea>
										 	</div>
											<li class="btn">
												<a onclick="saveBtn()" class="button primary small">저장</a>
												<a onclick="cancleBtn()" class="button small">취소</a>
											</li>
										</ul> 
										
										<!-- 4. 다른 사람이 쓴 글 부분 -->
										<ul>
											<li class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aaaa <span>&nbsp;&nbsp;&nbsp;[2023-07-05&nbsp;&nbsp;19:01:59]</span></li>
											<li class="txt">30대 / 남자 / 구로</li>
											<br>
											<li class="txt"> 별점 ★ ★ ★ ★ ★</li>
											<li class="txt"> 다른 사람이 쓴 글은 신고만 가능</li>
											<li class="btn">
												<a onclick="reportBtn()" class="button primary small">신고</a>
											</li>
										</ul>
									</div>
								</fieldset>
									<!-- //댓글 -->
								</section>
								<ul class="pagination" >
									<li><span class="button disabled">Prev</span></li>
									<li><a href="#" class="page active">1</a></li>
									<li><a href="#" class="page">2</a></li>
									<li><a href="#" class="page">3</a></li>
									<li><span>&hellip;</span></li>
									<li><a href="#" class="page">7</a></li>
									<li><a href="#" class="page">8</a></li>
									<li><a href="#" class="page">9</a></li>
									<li><a href="#" class="button">Next</a></li>
								</ul>

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="/index">홈으로</a></li>
										<li><a href="/elements">elements 페이지로</a></li>
										<li><a href="/generic">generic 페이지로</a></li>
										<!-- opener 옵션 1,2,3 -->
										<li>
											<span class="opener">운동모임</span>
											<ul>
												<li><a href="/index">운동모임 홈</a></li>
												<li><a href="/index">운동모임 게시판</a></li>
												<li><a href="/index">운동모임 작성</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">체육시설</span>
											<ul>
												<li><a href="sportnotice">체육시설 게시판</a></li>
												<li>체육시설 게시판으로 이동하게 코드 설정하기</li>
											</ul>
										</li>
										<li>
											<span class="opener">마이페이지</span>
											<ul>
												<li><a href="/index">내 프로필</a></li>
												<li><a href="/index">내 운동모임</a></li>
												<li><a href="/index">내 체육시설</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">고객센터</span>
											<ul>
												<li><a href="/index">공지사항</a></li>
												<li><a href="/index">FAQ / Q&A</a></li>
											</ul>
										</li>
									</ul>
								</nav>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>
			
			<!-- 발급받은 APP KEY를 사용하여 지도 불러오기 -->
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45f6ecba7dd368758230a1304931199f&libraries=services"></script>
			<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng('${sdto.lat}', '${sdto.lng}'), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			if('${sdto.scate}'== '볼링') var imageSrc = '/markericon/bowling_marker.png';
			else if('${sdto.scate}'== '배드민턴') var imageSrc = '/markericon/badminton_marker.png';
			else if('${sdto.scate}'== '클라이밍') var imageSrc = '/markericon/climbing_marker.png';
			else if('${sdto.scate}'== '풋살') var imageSrc = '/markericon/futsal_marker.png';
			else if('${sdto.scate}'== '스케이트') var imageSrc = '/markericon/iceskate_marker.png';
			else if('${sdto.scate}'== '테니스') var imageSrc = '/markericon/tennis_marker.png';
			else if('${sdto.scate}'== '탁구') var imageSrc = '/markericon/tabletennis_marker.png';
			else if('${sdto.scate}'== '농구') var imageSrc = '/markericon/basketball_marker.png';
			else var imageSrc = '/markericon/golf_marker.png';
			
			
			var imageSize = new kakao.maps.Size(130, 90), // 마커이미지의 크기입니다
			    imageOption = {offset: new kakao.maps.Point(33, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
			      
			// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
			    markerPosition = new kakao.maps.LatLng('${sdto.lat}', '${sdto.lng}'); // 마커가 표시될 위치입니다
			
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition, 
			    image: markerImage // 마커이미지 설정 
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);  
			</script>
			<!-- Scripts -->
			<script src="../js/jquery.min.js"></script>
			<script src="../js/browser.min.js"></script>
			<script src="../js/breakpoints.min.js"></script>
			<script src="../js/util.js"></script>
			<script src="../js/main.js"></script>

	</body>
</html>