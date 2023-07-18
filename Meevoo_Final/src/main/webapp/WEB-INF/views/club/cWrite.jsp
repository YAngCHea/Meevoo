<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>모집하기</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main_kim.css" />
		<link rel="icon" href="../images/main/logo2.png">
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="main.jsp" class="logo"><strong>Meevoo</strong></a>
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
										<header>
											<h1>모집 하기</h1>
											<h3>내가 필요한 모임을 직접 만들어보세요.</h3>
											<h4>좌측 사이드 바에서 관심 운동과 관심 지역을 선택할 수 있습니다.</h4>
										</header>
									</div>
								</section>

							<!-- Section -->
								<section>
								 <form action="doCWrite" method="get" name="cwrite">
								  <div class="inner">
								    <div class="recruit-form">
								      <div class="line subject">
								        <input type="text" name="cnm" placeholder="제목" autofocus>
								      </div>
								      <br>
								      <br>
								      <div class="line select-date">
								        <input type="text" id="select_Date" name="cdodate" placeholder="모집일시" onfocus="this.blur()" class="hasDatePicker">
								      </div>
								      <p class="txt">&nbsp;&nbsp;* 최대 30일까지 등록 가능</p>
								      <div class="line member">
								        <input type="text" class="input-form" id="crecruitlimit" name="crecruitlimit" placeholder="모집인원" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
								      </div>
								      <p class="txt">&nbsp;&nbsp;* 모집인원 최대 15명</p>
								      <div class="line location">
								        <button type="button" id="clickAddress" style="display:block">모집장소</button>
								      </div>
								      <!-- 지도를 표시할 div 입니다 -->
										<div id="map" style="width: 100%; height: 350px;"></div>
									
										<script type="text/javascript"
											src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f8bdf42277d512cacec989b9a12be5a8"></script>
										<script>
											var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
											mapOption = {
												center : new kakao.maps.LatLng(37.50534965, 126.8511775), // 지도의 중심좌표
												level : 3
											// 지도의 확대 레벨
											};
									
											// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
											var map = new kakao.maps.Map(mapContainer, mapOption);
											
											// 마커가 표시될 위치입니다 
											var markerPosition  = new kakao.maps.LatLng(37.50534965, 126.8511775); 
								
											// 마커를 생성합니다
											var marker = new kakao.maps.Marker({
											    position: markerPosition
											});
								
											// 마커가 지도 위에 표시되도록 설정합니다
											marker.setMap(map);
								
										</script>
								      <br>
								      <div class="line sports">
								        <div class="dropdown">
								          <select name="sname">
								            <option value="select" selected disabled>모집종목</option>
									        <option value="golf">골프</option>
									        <option value="climbing">클라이밍</option>
									        <option value="tennis">테니스</option>
									        <option value="tabletennis">탁구</option>
  									        <option value="basketball">농구</option>
									        <option value="bowling">볼링</option>
									        <option value="badminton">배드민턴</option>
									        <option value="futsal">풋살</option>
									        <option value="iceskate">스케이트</option>
									      </select>
								        </div>
								      </div>
								      <br>
								      <br>
								      <div class="line ccontent">
								        <input type="text" name="ccontent" placeholder="모집내용">
								      </div>
								      <br>
								      <br>
								      <div class="line cimg">
									    <label for="camera-wrap">이미지 추가</label>
								        <div class="preview"></div>
								        <div class="copy_html">
								        <button type="button">
									      <input type="file" name="image_file[]" multiple="" accept="image/*">
							        	</button>
								      </div>
								    </div>
								  </div>
								  <br>
								  <hr>
								  <br>
								  <div class="col-12">
									<ul class="actions">
										<li><input type="reset" value="초기화" /></li>
										<li><input type="submit" value="등록" class="primary" /></li>
									</ul>
								  </div>
							     </form>
								</section>

							

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
										<h2>메뉴</h2>
									</header>
									<ul>
										<li>
											<span class="opener">운동 모임</span>
											<ul>
												<li><a href="#">모임 목록</a></li>
												<li><a href="#">모임 검색하기</a></li>
												<li><a href="#">모임 작성하기</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">체육 시설</span>
											<ul>
												<li><a href="#">시설 목록</a></li>
												<li><a href="#">시설 검색하기</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">내 페이지</span>
											<ul>
												<li><a href="#">내 프로필</a></li>
												<li><a href="#">운동 모임</a></li>
												<li><a href="#">체육 시설</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">고객 센터</span>
											<ul>
												<li><a href="#">고객 센터</a></li>
												<li><a href="#">공지 사항</a></li>
												<li><a href="#">FQA/Q&A</a></li>
											</ul>
										</li>
									</ul>
								</nav>

							

							<!-- Footer -->
								<footer id="footer">
								</footer>

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="../js/jquery.min.js"></script>
			<script src="../js/browser.min.js"></script>
			<script src="../js/breakpoints.min.js"></script>
			<script src="../js/util.js"></script>
			<script src="../js/main.js"></script>

	</body>
</html>