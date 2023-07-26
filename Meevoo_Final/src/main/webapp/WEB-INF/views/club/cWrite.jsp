<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<title>모집하기</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<link rel="stylesheet" href="../css/main_kim.css" />
		<link rel="icon" href="../images/main/logo2.png">
		
<c:if test="${sessionId==null}">
 <script>
   alert ("로그인을 하셔야 모임글 작성이 가능합니다.");
   location.href="/member/login";
 </script>
</c:if>

	</head>
	<body class="is-preload">
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">
							<!-- Header -->
							<%@ include file="../top.jsp" %>
							<!-- Banner -->
								<section id="banner">
									<div class="content">
										<header>
											<h1>모임 모집하기</h1>
											<h3>내가 필요한 모임을 직접 만들어보세요.</h3>
											<h4>다양한 사람들과 공통된 관심사로 새로운 연결을 가져봅시다.</h4>
										</header>
									</div>
								</section> 

							    <!-- Section: 모임모집 작성 입력 -->
								<section>
								 <form action="/club/cWrite" method="post" name="cWriteFrom" enctype="multipart/form-data">
								    <!-- recruit-form -->
								    <div class="recruit-form">
								      <!-- 운동모임 장소 선택 칸 -->
								      <div class="line location" style="margin-bottom: 1em; margin-top: 2em; ">
								        <!-- 부모 페이지로부터 전달받은 "sfno" 값을 자동으로 입력할 입력 칸 -->
								        <!-- 
								        <input type="text" placeholder="모임장소 이름" class="sfnm" style="width: 89%; float: left; margin-bottom: 3em;"/>
								        <input type="text" placeholder="모임장소 주소" class="addr" style="width: 89%; float: left; margin-bottom: 3em;"/> 
								        -->
										<input type="button" value="모임장소 찾기" class="default" onclick="javascript:location.href='/club/cWriteSearchSF'" style="float: right;" />
								        <input type="text" placeholder="모임장소(체육시설번호)" class="sfno" id="inputField" style="width: 89%; float: left; margin-bottom: 3em;"/>
								        <!-- <input type="text" name="dongcate" class="dongcate" placeholder="동이름">
								        <input type="text" name="cloc" class="cloc" placeholder="주소"> -->
								      </div>
								      <!-- 운동모임 장소 선택 칸 끝-->
								      <script>
								        window.onload = function() {
								            // URL 파라미터를 가져오는 함수
								            function getURLParameter(name) {
								                return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [, ""])[1].replace(/\+/g, '%20')) || null;
								            }
								
								            // 자식 창의 입력 칸을 가져옴
								            var inputField = document.getElementById("inputField");
								
								            // 부모 창에서 전달받은 "sfno" 값을 가져와서 자식 창의 입력 칸에 기입
								            var sfnoFromParent = getURLParameter("sfno");
								            inputField.value = sfnoFromParent;
								        };
								      </script>
								      <!-- 운동모임 제목 입력 칸 -->
								      <div class="line subject" >
								        <input type="text" name="cnm" class="cnm" placeholder="제목">
								      </div>
								      <p class="txt">&nbsp;&nbsp;* 최대 한글 25글자 까지 입력 가능</p>
								      <!-- 운동모임 제목 입력 칸 끝 -->
								      <!-- 운동모임 날짜 입력 칸 -->
								      <div class="line select-date">
								        <input type="datetime-local" style="width:100%;" id="select_Date" class="cdodate" name="dateStr" placeholder="모집일시" onfocus="this.blur()" class="hasDatePicker">
								      </div>
								      <p class="txt">&nbsp;&nbsp;* 최대 30일까지 선택 가능</p>
								      <!-- 운동모임 날짜 입력 칸 끝 -->
								      <!-- 운동모임 인원수 입력 칸 -->
								      <div class="line member">
								        <input type="number" min="2" max="15" style="width:100%;" class="crecruitlimit" id="crecruitlimit" name="crecruitlimit" placeholder="모집인원" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
								      </div>
								      <p class="txt">&nbsp;&nbsp;* 모집인원 최대 15명</p>
								      <!-- 운동모임 인원수 입력 칸 끝 -->
								      
								      <!-- 운동모임 운동종목 선택 칸 -->
								      <div class="col-4 col-12-small" style="margin-bottom: 1em; margin-top: 3em;">
								          <div style="margin-bottom: 1em;">운동종목</div>  
								          <input type="radio" name="scate" id="basketball" value="basketball" />
								          <label for="basketball"><img src="../images/sports/basketballIcon.png" style="width: 2em;"> 농구</label>
								          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								          <input type="radio" name="scate" id="badminton" value="badminton" />
								          <label for="badminton"><img src="../images/sports/badmintonIcon.png" style="width: 2em;"> 배드민턴</label>
								          <input type="radio" name="scate" id="bowling" value="bowling" />
								          <label for="bowling"><img src="../images/sports/bowlingIcon.png" style="width: 2em;"> 볼링</label>
								          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								          <input type="radio" name="scate" id="climbing" value="climbing" />
								          <label for="climbing"><img src="../images/sports/climbingIcon.png" style="width: 2em;"> 클라이밍</label>
								          <input type="radio" name="scate" id="futsal" value="futsal" />
								          <label for="futsal"><img src="../images/sports/futsalIcon.png" style="width: 2em;"> 풋살</label>
								          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								          <input type="radio" name="scate" id="iceSkate" value="iceSkate" />
								          <label for="iceSkate"><img src="../images/sports/iceSkateIcon.png" style="width: 2em;"> 스케이트</label>
								          <input type="radio" name="scate" id="golf" value="golf" />
								          <label for="golf"><img src="../images/sports/golfIcon.png" style="width: 2em;"> 골프</label>
								          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								          <input type="radio" name="scate" id="tableTennis" value="tableTennis" />
								          <label for="tableTennis"><img src="../images/sports/tableTennisIcon.png" style="width: 2em;"> 탁구</label>
								          <input type="radio" name="scate" id="tennis" value="tennis" />
								          <label for="tennis"><img src="../images/sports/tennisIcon.png" style="width: 2em;"> 테니스</label>
								      </div>
								      <!-- 운동모임 운동종목 선택 칸 끝-->
								      <br>
								      <br>
								      <!-- 운동모임 내용 입력 칸 -->
								      <div class="line ccontent">
								        <textarea name="ccontent" class="ccontent" placeholder="모입 모집을 위한 게시글을 작성해주세요. (최대 한글 250자 까지 입력 가능)" cols="40" rows="5" style="margin-right: 0.5em;"></textarea>
								      </div>
								      <!-- 운동모임 내용 입력 칸 끝-->
								      <br>
								      <br>
								      <!-- 운동모임 사진 업로드 칸 -->
									  <label for="cimg">이미지 추가</label>
									  <input type="file" name="files" id = "cimg" class="file" style="margin-bottom: 3em;"/>
									  <input type="file" name="files" id = "cimg" class="file"  style="margin-bottom: 3em;"/>
									  <input type="file" name="files" id = "cimg" class="file"  style="margin-bottom: 3em;"/>
								      <!-- 운동모임 사진 업로드 칸 끝 -->
								      <label for="id">작성자</label>
								      ${sessionId }
								      <input type="hidden" name="id" id = "id" value="${sessionId }" style="margin-bottom: 3em;" >
								      
								  <br>
								  <hr>
								  <script>
									function cWriteChkBtn(){
										alert("모임글이 등록되었습니다.")
										cWriteFrom.submit(); //전송
									}
								  </script>
								  <!-- 운동모임 작성 입력 버튼 -->
								  <div class="col-12" style="float: right;">
									<ul class="actions">
										<li><input type="button" value="취소" onclick="javascript:location.href='/club/club';" /></li>
										<li><input type="reset" value="초기화" /></li>
										<li><input type="button" value="등록" class="primary" onclick="cWriteChkBtn()" /></li>
									</ul>
								  </div>
								  <!-- 운동모임 작성 입력 버튼 끝-->
								  <br>
								</div>
								<!-- recruit-form 끝-->
							   </form>
						     </section>
							 <!-- Section: 모임모집 입력 작성 끝-->

							


							

							    <!-- Footer -->
								<%@ include file="../footer.jsp" %>
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