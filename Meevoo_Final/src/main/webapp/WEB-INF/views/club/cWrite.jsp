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
<script>
  //페이지가 로드되면 실행되는 함수
  window.onload = function() {
	  // 1. 모임장소 검색시 시설 상세페이지 다녀오기
      // URL 파라미터를 가져오는 함수
      function getURLParameter(name) {
          return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [, ""])[1].replace(/\+/g, '%20')) || null;
      }

      // 자식 창의 입력 칸을 가져옴
      var inputField = document.getElementById("inputField");
      var sfnmField = document.querySelector(".sfnm");
      var dongcateField = document.querySelector(".dongcate");
      var clocField = document.querySelector(".cloc");
      var scateField = document.querySelector(".scate");

      // 부모 창에서 전달받은 "sfno" 값을 가져와서 자식 창의 입력 칸에 기입
      var sfnoFromParent = getURLParameter("sfno");
      var sfnmFromParent = getURLParameter("sfnm");
      var dongcateFromParent = getURLParameter("dongcate");
      var clocFromParent = getURLParameter("cloc");
      var scateFromParent = getURLParameter("scate");
      
      inputField.value = sfnoFromParent;
      sfnmField.value = sfnmFromParent;
      dongcateField.value = dongcateFromParent;
      clocField.value = clocFromParent;
      scateField.value = scateFromParent;
      
      /* 
      // 2. 모임일자 선택시 오늘부터 30일까지만 선택 가능
	  // 오늘 날짜를 가져옵니다.
	  var today = new Date().toISOString().split('T')[0];
	  // 30일 후의 날짜를 계산합니다.
	  var thirtyDaysLater = new Date();
	  thirtyDaysLater.setDate(thirtyDaysLater.getDate() + 30);
	  var thirtyDaysLaterStr = thirtyDaysLater.toISOString().split('T')[0];
	  // input 요소에 최소 날짜와 최대 날짜를 설정합니다.
	  var dateInput = document.getElementById('cdodate');
	  dateInput.setAttribute('min', today);
	  dateInput.setAttribute('max', thirtyDaysLaterStr);
       */
	  
  };
  
  
  
  
  //모임글 등록
  function cWriteChkBtn(){
		alert("모임글이 등록되었습니다.")
		cWriteFrom.submit(); //전송
	}
</script>

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
								 
								<!-- 입력칸 -->
								<section>
								<div>
								  <ul style="margin: 0; margin-bottom: 0.5em; padding: 0;">
								    <li><span style="color: #f56a6a; font-weight: bold;">*</span> 표시된 항목은 필수 항목이므로 반드시 입력하셔야 모임등록이 진행됩니다.</li>
								  </ul>
								</div>
								<form action="/club/cWrite" method="post" name="cWriteFrom" enctype="multipart/form-data" >
								  <div class = "table-wrapper">
								    <table>
								      <colgroup>
								        <col width="22%" />
								        <col width="39%" />
								        <col width="39%" />
								      </colgroup>
									  <tbody>
									    <tr>
										  <th>모임장소 <span style="color: #f56a6a; font-weight: bold;">*</span></th>
										  <td colspan="2">
										    <ul>
										      <li><input type="text" class="sfno" type="button" id="inputField" style="display:block; margin-bottom:0.5em;" placeholder="모임장소를 선택하기 위해 클릭해 주세요" readonly onclick="javascript:location.href='/club/cWriteSearchSF'"></input></li>
										      <li><input type="text" name="sfnm" class="sfnm" placeholder="시설 이름" style="margin-bottom:0.5em;" readonly ></li>
										      <li></li>
										      <li><input type="text" name="cloc" class="cloc" placeholder="주소" style="margin-bottom:0.5em;" readonly ></li>
										    </ul>
										  </td>
									    </tr>
									    <tr>
										  <th>운동종목</th>
										  <td colspan="2">
										    <ul>
										      <li><input type="text" name="scate" class="scate" placeholder="모임장소를 선택하시면 자동으로 기입됩니다" readonly ></li>
										    </ul>
										  </td>
									    </tr>
									    <tr>
										  <th>모임이름 <span style="color: #f56a6a; font-weight: bold;">*</span></th>
										  <td colspan="2">
										    <ul>
										      <li><input type="text" name="cnm" class="cnm" placeholder="한글로 최대 25자 까지 입력 가능 (영문은 최대 50자)"></li>
										    </ul>
										  </td>
									    </tr>
									    <tr>
										  <th>모임일시 <span style="color: #f56a6a; font-weight: bold;">*</span></th>
										  <td>
										    <ul>
										      <li><input type="date" name="cdodate_date" class="cdodate_date" id="cdodate_date" style="margin-bottom:1em;"  /></li>
										    </ul>
										  </td>
										  <td>
										    <ul>
										      <li><input type="time" name="cdodate_time" class="cdodate_time" id="cdodate_time"   /></li>
										    </ul>
										  </td>
									    </tr>
									    <tr>
										  <th>모집인원 <span style="color: #f56a6a; font-weight: bold;">*</span></th>
										  <td colspan="2">
										    <ul>
										      <li><input type="number" min="2" max="15" class="crecruitlimit" id="crecruitlimit" name="crecruitlimit" placeholder="작성자 포함 최대 15명까지 모집가능" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></li>
										    </ul>
										  </td>
									    </tr>
									    <tr>
										  <th>소개내용</th>
										  <td colspan="2">
										    <ul>
										      <li><textarea name="ccontent" class="ccontent" placeholder="모입모집을 위한 소개글을 작성해주세요. (최대 한글 250자 까지 입력 가능)" cols="40" rows="5" ></textarea></li>
										    </ul>
										  </td>
									    </tr>
									    <tr>
										  <th>사진첨부</th>
										  <td colspan="2">
										    <ul>
										      <li><input type="file" name="file" id = "file" class="file" /></li>
										    </ul>
										  </td>
									    </tr>
									  </tbody>
									  <!-- 운동모임 작성 입력 버튼 -->
									  <tfoot>
									    <tr>
										   <th></th>
										   <td colspan="2">
										     <ul class="actions" style="float: right; margin-top: 3em;">
										       <li><input type="button" value="취소" onclick="javascript:location.href='/club/club';" /></li>
										       <li><input type="reset" value="초기화" /></li>
										       <li><input type="button" value="등록" class="primary" onclick="cWriteChkBtn()" /></li>
									         </ul>
										 </td>
									   </tr>
									  </tfoot>
								  <!-- 운동모임 작성 입력 버튼 끝-->
								    </table>
								      <ul>
								        <li><input type="hidden" name="id" id = "id" value="${sessionId }" ></li>
								        <li><input type="hidden" name="dongcate" class="dongcate" placeholder="동 이름" ></li>
								      </ul>
								  </div>
								</form>
								</section>
								<script>
									function cWriteChkBtn(){
										alert("모임글이 등록되었습니다.")
										cWriteFrom.submit(); //전송
									}
								  </script>
								 
								<%--  
							    <!-- Section: 모임모집 작성 입력 -->
								<section>
								 <form action="/club/cWrite" method="post" name="cWriteFrom" enctype="multipart/form-data">
								    <!-- recruit-form -->
								    <div class="recruit-form">
								      <!-- 운동모임 장소 선택 칸 -->
								      <div class="line location" style="margin-bottom: 1em; margin-top: 2em; ">
								        <label for="sfno">시설번호</label>
								        <input type="number" name="sfno" id = "sfno" style="margin-bottom: 3em;" >
								      </div>
								      <!-- 운동모임 제목 입력 칸 -->
								      <div class="line subject" >
								        <input type="text" name="cnm" class="cnm" placeholder="제목">
								      </div>
								      <p class="txt">&nbsp;&nbsp;* 최대 한글 25글자 까지 입력 가능</p>
								      <!-- 운동모임 제목 입력 칸 끝 -->
								      <!-- 운동모임 날짜 입력 칸 -->
								      <div class="line select-date">
								        <label for="cdodate">모임일자</label>
								        <input type="date" style="width:100%;" id="cdodate" class="cdodate" name="cdodate" placeholder="모집일시" onfocus="this.blur()" />
								      </div>
								      <p class="txt">&nbsp;&nbsp;* 오늘부터 최대 30일까지 선택가능</p>
								      <!-- 운동모임 날짜 입력 칸 끝 -->
								      <!-- 운동모임 시간 입력 칸 -->
								      <div class="line select-time">
								        <label for="cdotime">모임시간</label>
								        <input type="time" style="width:100%;" id="cdotime" class="cdotime" name="cdotime" placeholder="모집시간" onfocus="this.blur()" />
								      </div>
								      <!-- 운동모임 시간 입력 칸 끝 -->
								      <!-- 운동모임 인원수 입력 칸 -->
								      <div class="line member" style="margin-top: 4em;" >
								        <input type="number" min="2" max="15" style="width:100%;" class="crecruitlimit" id="crecruitlimit" name="crecruitlimit" placeholder="모집인원" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
								      </div>
								      <p class="txt">&nbsp;&nbsp;* 모집인원 최대 15명</p>
								      <!-- 운동모임 인원수 입력 칸 끝 -->
								      
								      <!-- 운동모임 운동종목 선택 칸 -->
								      <div class="col-4 col-12-small" style="margin-bottom: 1em; margin-top: 3em; -moz-appearance: none; -webkit-appearance: none;-ms-appearance: none; appearance: none; background: #ffffff; border-radius: 0.375em; border: none; border: solid 1px rgba(210, 215, 217, 0.75); color: inherit; display: block; outline: 0; padding: 0 1em; text-decoration: none; width: 100%;" >
								          <div style="margin-bottom: 1em;">운동종목</div>  
								          <input type="radio" name="scate" id="basketball" value="농구" />
								          <label for="basketball"><img src="../images/sports/basketballIcon.png" style="width: 2em;"> 농구</label>
								          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								          <input type="radio" name="scate" id="badminton" value="배드민턴" />
								          <label for="badminton"><img src="../images/sports/badmintonIcon.png" style="width: 2em;"> 배드민턴</label>
								          <input type="radio" name="scate" id="bowling" value="볼링" />
								          <label for="bowling"><img src="../images/sports/bowlingIcon.png" style="width: 2em;"> 볼링</label>
								          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								          <input type="radio" name="scate" id="climbing" value="클라이밍" />
								          <label for="climbing"><img src="../images/sports/climbingIcon.png" style="width: 2em;"> 클라이밍</label>
								          <input type="radio" name="scate" id="futsal" value="풋살" />
								          <label for="futsal"><img src="../images/sports/futsalIcon.png" style="width: 2em;"> 풋살</label>
								          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								          <input type="radio" name="scate" id="iceSkate" value="스케이트" />
								          <label for="iceSkate"><img src="../images/sports/iceSkateIcon.png" style="width: 2em;"> 스케이트</label>
								          <input type="radio" name="scate" id="golf" value="골프" />
								          <label for="golf"><img src="../images/sports/golfIcon.png" style="width: 2em;"> 골프</label>
								          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								          <input type="radio" name="scate" id="tableTennis" value="탁구" />
								          <label for="tableTennis"><img src="../images/sports/tableTennisIcon.png" style="width: 2em;"> 탁구</label>
								          <input type="radio" name="scate" id="tennis" value="테니스" />
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
								      <label for="id"></label>
								      <input type="hidden" name="id" id = "id" value="${sessionId }" style="margin-bottom: 3em;" >
								      <label for="cnowstatus"></label>
								      <input type="hidden" name="cnowstatus" id = "cnowstatus" value="모집중" style="margin-bottom: 3em;" >
								      <label for="dongcate"></label>
								      <input type="hidden" name="dongcate" id = "dongcate" value="구로동" style="margin-bottom: 3em;" >
								      <label for="cloc"></label>
								      <input type="hidden" name="cloc" id = "cloc" value="서울특별시 테스트구 테스트동" style="margin-bottom: 3em;" >
								      
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

							 --%>


							

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