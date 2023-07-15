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

							<!-- Top -->
							<%@ include file="../top.jsp" %>

							<!-- Banner -->
								<!-- <section id="banner">
									<div class="content">
										<header style="text-align: center;">
											<h1>Meevoo 체육시설 상세 페이지</h1>
											<p>section 있을때마다 아래와 같이 줄이 생김</p>
										</header>
									</div>
								</section> -->

							<!-- Section -->
								<section class="sportlistview">
									<!-- 상세설명 css -> main.css(63번째)  -->
									<div class="viewHead">
										<div class="subject">
											<ul>
												<li>${sdto.sfno}. ${sdto.sfnm}</li>
											</ul>
										</div>
										<div class="imgurl">
											<ul>
												<li><a href="${sdto.imgurl1}" target="_blank"><img src="${sdto.imgurl1}"></a></li>
												<li><a href="${sdto.imgurl2}" target="_blank"><img src="${sdto.imgurl2}"></a></li>
												<li><a href="${sdto.imgurl3}" target="_blank"><img src="${sdto.imgurl3}"></a></li>
												<li><a href="${sdto.imgurl4}" target="_blank"><img src="${sdto.imgurl4}"></a></li>
												<li><a href="${sdto.imgurl5}" target="_blank"><img src="${sdto.imgurl5}"></a></li>
											</ul>
										</div>
										<div class="day">
											<p class="txt">운동종목<span>${sdto.scate}</span></p>
											<p class="txt">동이름<span>${sdto.dongcate}</span></p>
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
												<p class="txt">홈페이지URL<span><a href="${sdto.homepage}">${sdto.homepage}</a></span></p>
											</c:if>
											<p class="txt">별점<span>${sdto.savgstar}</span></p>
										</div>
										<div class="convenient">
											<c:if test="${sdto.wifi == 'O'}">
												<img src="/convenient/wifiO.png">
											</c:if>
											<c:if test="${sdto.wifi == 'X'}">
												<img src="/convenient/wifiX.png">
											</c:if>
											<c:if test="${sdto.pet == 'O'}">
												<img src="/convenient/petO.png">
											</c:if>
											<c:if test="${sdto.pet == 'X'}">
												<img src="/convenient/petX.png">
											</c:if>
											<c:if test="${sdto.parking == 'O'}">
												<img src="/convenient/parkingO.png">
											</c:if>
											<c:if test="${sdto.parking == 'X'}">
												<img src="/convenient/parkingX.png">
											</c:if>
											<c:if test="${sdto.slope == 'O'}">
												<img src="/convenient/slopeO.png">
											</c:if>
											<c:if test="${sdto.slope == 'X'}">
												<img src="/convenient/slopeX.png">
											</c:if><br>
											<p class="txt">와이파이</p>
											<p class="txt">반려동물</p>
											<p class="txt">주차장</p>
											<p class="txt">출입구경사로</p>
										</div>
									<!-- 지도 데이터 불러오기 -->
									<div id="map"></div>
									
									</div>
									<br>
									<!-- Buttons 수정 ->  main.css (1294번째)-->
									<ul class="actions">
										<li><a class="button" onclick="sPickBtn()">시설 찜하기</a></li>
										<li><a href="sportList?&page=${page}" class="button primary">시설 목록으로</a></li>
									</ul>
								</section>
								
								<!-- 시설 리뷰 -->
								<!-- 리뷰 css -> main.css (78번째) -->
								<section class="sportreview">
									<div class="content" style="text-align: center;">
										<li class="name">${sdto.sfnm} 시설 리뷰</li>
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
								
						<br>	
						<!-- Footer -->
						<%@ include file="../footer.jsp" %>
						</div>
						
					</div>

					
				<!-- Sidebar -->
				<%@ include file="../sidebar.jsp" %>
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
			
			// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			var content = '<div class="customoverlay">' +
			    		  '<a>' +
			    		  '<span class="title">${sdto.sfnm}</span>' +
			    		  '</a>' +
			    		  '</div>';

			// 커스텀 오버레이가 표시될 위치입니다 
			var position = new kakao.maps.LatLng('${sdto.lat}', '${sdto.lng}');  

			// 커스텀 오버레이를 생성합니다
			var customOverlay = new kakao.maps.CustomOverlay({
			    map: map,
			    position: position,
			    content: content,
			    yAnchor: 1 
			});
			</script>
			<!-- Scripts -->
			<script src="../js/jquery.min.js"></script>
			<script src="../js/browser.min.js"></script>
			<script src="../js/breakpoints.min.js"></script>
			<script src="../js/util.js"></script>
			<script src="../js/main.js"></script>

	</body>
</html>