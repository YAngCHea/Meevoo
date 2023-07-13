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

							<!-- Header -->
								<header id="header">
									<a href="/index" class="logo"><strong>Meevoo</strong> by ?</a>
									<ul class="icons">
										<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
									</ul>
								</header>

							<!-- Banner -->
								<section id="banner" class="center-table">
									<div class="content">
										<header style="text-align: center;">
											<h1>체육시설</h1>
											<p>원하는 체육시설 리스트를 클릭해주세요.</p>
										</header>
									</div>
									<!-- 이미지 크기 조정 -> main.css 2167번째 -->
									<span class="fclty2">
										<img src="/images/fclty2.jpg" alt="" />
									</span>
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
														<a href="/sport/sportnoticeView?sfno=${sport.sfno}&page=${page}" class="lightgray">${sport.sfnm}</a>
													</td>
													<td>${sport.scate}</td>
													<td>${sport.dongcate}</td>
													<td>${sport.savgstar}</td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
										<!-- 페이지 넘기는 버튼으로 이동하는 옵션 -->
										<ul class="pagination" >
									        <!-- 이전페이지 이동 -->
									        <c:if test="${page>1}">
									          <a href="/sport/sportnotice?page=${page-1}"><li><span class="button">Prev</span></li></a>
									        </c:if>
										    <c:if test="${page == 1}">
									       	  <li><span class="button disabled">Prev</span></li>
									        </c:if>
									        <!--  -->
									        <!--페이지 리스트-->
									        <c:forEach begin="${startPage}" end="${endPage}" step="1" var="num">
									          <c:if test="${num != page }">
										      	<a>
										      	  <li><a href="/sport/sportnotice?page=${num}" class="page">${num}</a></li>
										      	</a>
									      	  </c:if>
									      	  <c:if test="${num == page }">
										      	  <li><a class="page active">${num}</a></li>
									      	  </c:if>
									        </c:forEach>
									        <!--  -->
									        <!-- 다음페이지 이동 -->
									        <c:if test="${page<maxPage}">
									         <li><a href="/sport/sportnotice?page=${page+1}" class="button">Next</a></li>
									        </c:if>
									        <c:if test="${page==maxPage}">
									         <li><a class="button disabled">Next</a></li>
									        </c:if>
										</ul>
									    
									    <!-- main.css 1398번쨰 줄 수정 -->
									    <!-- 페이지 넘기는 버튼 -->
										<!-- 페이지 이동하는 옵션 -->
										<!--
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
										-->
									</div>
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
			<!-- Scripts -->
			<script src="../js/jquery.min.js"></script>
			<script src="../js/browser.min.js"></script>
			<script src="../js/breakpoints.min.js"></script>
			<script src="../js/util.js"></script>
			<script src="../js/main.js"></script>

	</body>
</html>