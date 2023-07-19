<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>체육시설 홈</title>
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main_kmh.css" />
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Top -->
							<%@ include file="../top.jsp" %>

								<!-- Banner -->
								<section id="banner" class="center-table">
									<div class="content">
										<header class="sportmain">
											<h1>체육시설</h1>
											<p>원하는 체육시설 리스트를 클릭해주세요.</p>
										</header>
									</div>
									<!-- 이미지 크기 조정 -> main.css 2167번째 -->
									<span class="fclty2">
										<img src="/images/fclty2.jpg" alt="" />
									</span>
								</section>
								<!-- // Banner -->
								
								
								<!-- 시설 검색바  -->
								<section class="searchBar">
									<div class="sportListSearch" id="sport11" >
									  <form class='searchbutton' method="post" action="/sport/sportList" enctype="multipart/form-data">
										<div class="day">
											<p class="txt">운동종목
												<input type="checkbox" name="sport" id="golf" value="golf">
												<label for="golf"class="golf">골프</label>
												<input type="checkbox" name="sport" id="climbing" value="climbing">
												<label for="climbing"class="climbing">클라이밍</label>
												<input type="checkbox" name="sport" id="tennis" value="tennis">
												<label for="tennis"class="tennis">테니스</label>
												<input type="checkbox" name="sport" id="tabletennis" value="tabletennis">
												<label for="tabletennis"class="tabletennis">탁구</label>
												<input type="checkbox" name="sport" id="basketball" value="basketball">
												<label for="basketball"class="basketball">농구</label>
												<input type="checkbox" name="sport" id="bowling" value="bowling">
												<label for="bowling"class="bowling">볼링</label>
												<input type="checkbox" name="sport" id="badminton" value="badminton">
												<label for="badminton"class="badminton">배드민턴</label>
												<input type="checkbox" name="sport" id="futsal" value="futsal">
												<label for="futsal"class="futsal">풋살</label>
												<input type="checkbox" name="sport" id="skate" value="skate">
												<label for="skate"class="skate">스케이트</label>
											</p>
										</div>
										<div class="day">
											<p class="txt">동이름
												<input type="checkbox" name="dong" id="dong_1" value="dong_1">
												<label for="dong_1"class="dong_1">구로동</label>
												<input type="checkbox" name="dong" id="dong_2" value="dong_2">
												<label for="dong_2"class="dong_2">개봉동</label>
												<input type="checkbox" name="dong" id="dong_3" value="dong_3">
												<label for="dong_3"class="dong_3">고척동</label>
												<input type="checkbox" name="dong" id="dong_4" value="dong_4">
												<label for="dong_4"class="dong_4">신도림동</label>
												<input type="checkbox" name="dong" id="dong_5" value="dong_5">
												<label for="dong_5"class="dong_5">항동</label>
												<input type="checkbox" name="dong" id="dong_6" value="dong_6">
												<label for="dong_6"class="dong_6">오류동</label>
												<input type="checkbox" name="dong" id="dong_7" value="dong_7">
												<label for="dong_7"class="dong_7">가리봉동</label>
												<input type="checkbox" name="dong" id="dong_8" value="dong_8">
												<label for="dong_8"class="dong_8">궁동</label>
											</p>
										</div>
										<div class="day">
											<p class="txt">편의시설
												<input type="checkbox" name="convenient" id="wifi" value="wifi">
												<label for="wifi"class="wifi">와이파이</label>
												<input type="checkbox" name="convenient" id="pet" value="pet">
												<label for="pet"class="pet">반려동물</label>
												<input type="checkbox" name="parking" id="parking" value="parking">
												<label for="parking"class="parking">주차장</label>
												<input type="checkbox" name="convenient" id="slope" value="slope">
												<label for="slope"class="slope">출입구경사로</label>
											</p>
										</div>
										<div class="day" id="serachbutton11">
											<p class="txt">
												<input type="text" style="width:300px;" name="query" id="query" placeholder="검색어를 입력해주세요." />
												<button class="button primary small">검색</button>
												<button class="button small">취소</button>
											</p>
										</div>
									  </form>
									</div>
								</section>

								<!-- Section -->
								<section>
									<!-- Table -->
									<div class="table-wrapper">
										<table>
											<colgroup>
												<col width="10%"  />
												<col width="*" />
												<col width="15%" />
												<col width="15%"/>
												<col width="10%"/>
											</colgroup>
											<thead>
												<tr>
													<th>NO.</th>
													<th>시설명</th>
													<th>운동종목</th>
													<th>동이름</th>
													<th>별점</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="sport" items="${list}">
												<tr>
													<td>${sport.sfno}</td>
													<td>
														<a href="/sport/sportListView?sfno=${sport.sfno}&page=${page}" class="lightgray">${sport.sfnm}</a>
													</td>
													<td>${sport.scate}</td>
													<td>${sport.dongcate}</td>
													<td>${sport.savgstar}</td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
										<!-- // Table -->
										
										<!-- 페이지 넘기는 버튼으로 이동하는 옵션 -->
										<!-- main_kmh.css 1398번쨰 줄 수정 -->
										<ul class="pagination" >
											<!-- 첫 페이지 이동 -->
									        <c:if test="${page != 1}">
									         <a href="/sport/sportList?page=1" class="button"><li><<</li></a>
									        </c:if>
									        <c:if test="${page == 1}">
									         <a class="button disabled"><li><<</li></a>
									        </c:if>
									        <!-- 이전페이지 이동 -->
									        <c:if test="${page>1}">
									          <li><a href="/sport/sportList?page=${page-1}" class="button">Prev</a></li>
									        </c:if>
										    <c:if test="${page == 1}">
									       	  <li><a class="button disabled">Prev</a></li>
									        </c:if>
									        <!--  -->
									        <!--페이지 리스트-->
									        <c:forEach begin="${startPage}" end="${endPage}" step="1" var="num">
									          <c:if test="${num != page }">
										      	<a>
										      	  <li><a href="/sport/sportList?page=${num}" class="page">${num}</a></li>
										      	</a>
									      	  </c:if>
									      	  <c:if test="${num == page }">
										      	  <li><a class="page active">${num}</a></li>
									      	  </c:if>
									        </c:forEach>
									        <!--  -->
									        <!-- 다음페이지 이동 -->
									        <c:if test="${page<maxPage}">
									         <li><a href="/sport/sportList?page=${page+1}" class="button">Next</a></li>
									        </c:if>
									        <c:if test="${page==maxPage}">
									         <li><a class="button disabled">Next</a></li>
									        </c:if>
									        <!-- 끝페이지 이동 -->
									        <c:if test="${page != maxPage}">
									         <a href="/sport/sportList?page=${maxPage}" class="button"><li>>></li></a>
									        </c:if>
									        <c:if test="${page == maxPage}">
									         <a class="button disabled"><li>>></li></a>
									        </c:if>
										</ul>
										
									</div>
								</section>
								<!-- // Section -->
								
								<!-- Footer -->
								<%@ include file="../footer.jsp" %>

						</div>
					</div>
					<!-- Sidebar -->
					<%@ include file="../sidebar.jsp" %>

			</div>
					
	<!-- Scripts -->
	<script src="../js/jquery.min.js"></script>
	<script src="../js/browser.min.js"></script>
	<script src="../js/breakpoints.min.js"></script>
	<script src="../js/util.js"></script>
	<script src="../js/main.js"></script>

	</body>
</html>