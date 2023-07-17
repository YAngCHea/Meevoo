<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>main</title>
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main.lee.css" />
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

			
			
				<!-- Main -->
					<div id="main">
						<div class="inner">
						
						<!-- top.jsp -->
						<%@ include file="top.jsp" %>


							<!-- Banner -->
								<section id="banner">
									<div class="content">
										<header>
											<h1><br>관심사로<br />
											통하는 우리</h1>
											<p>관심사 기반 커뮤니티, <strong>Meevoo</strong></p>
										</header>
										<ul class="actions">
											<c:if test="${sessionId == null }">
												<li><a href="/member/agree" class="button big">더 알아보기</a></li>
											</c:if>
											<c:if test="${sessionId != null }">
												<li><a href="/club/club" class="button big">참여하기</a></li>
											</c:if>
										</ul>
									</div>
									<span class="image object">
										<img src="images/main2.png" alt="" />
									</span>
								</section>


							<!-- Section -->
								<section>
									<header class="major">
										<h2>메인 메뉴</h2>
									</header>
									<div class="posts">
										<article>
											<a href="#" class="image"><img src="images/club2.png" alt="" /></a>
											<h3>운동모임</h3>
											<p>똑같은 일상을 활기차게 바꿔줄<br> 관심사 기반 모임</p>
											<ul class="actions">
												<li><a href="#" class="button">운동모임</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="images/fclty2.png" alt="" /></a>
											<h3>체육시설</h3>
											<p>스포츠 시설 정보와 리뷰를 한눈에!</p>
											<ul class="actions">
												<li><a href="#" class="button">체육시설</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="images/mypage2.png" alt="" /></a>
											<h3>내 페이지</h3>
											<p>모든 것을 관리하고 확인하는<br> 나만의 페이지</p>
											<ul class="actions">
												<li><a href="#" class="button">내 페이지</a></li>
											</ul>
										</article>
										
									</div>
								</section>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>가장 많이 찜한 운동모임</h2>
									</header>
									<div class="features">
										<article>
											<span><img src="images/clubPick1.png"></span>
											<div class="content">
												<h2>&nbsp;&nbsp;&nbsp;&nbsp;테니스 한판 하실분</h2>
												<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;구로구 개봉동</p>
											</div>
										</article>
										<article>
											<span><img src="images/clubPick1.png"></span>
											<div class="content">
												<h2>&nbsp;&nbsp;&nbsp;&nbsp;테니스 한판 하실분</h2>
												<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;구로구 개봉동</p>
											</div>
										</article>
										<article>
											<span><img src="images/clubPick1.png"></span>
											<div class="content">
												<h2>&nbsp;&nbsp;&nbsp;&nbsp;테니스 한판 하실분</h2>
												<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;구로구 개봉동</p>
											</div>
										</article>
										<article>
											<span><img src="images/clubPick1.png"></span>
											<div class="content">
												<h2>&nbsp;&nbsp;&nbsp;&nbsp;테니스 한판 하실분</h2>
												<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;구로구 개봉동</p>
											</div>
										</article>
										
									</div>
								</section>
							<!-- Section -->
								<section>
									<header class="major">
										<h2>가장 많이 찜한 체육시설</h2>
									</header>
									<div class="features">
										<article>
											<span><img src="images/football1.png"></span>
											<div class="content">
												<h2>&nbsp;&nbsp;&nbsp;&nbsp;구로동 풋살장</h2>
												<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;구로구 구로동</p>
											</div>
										</article>
										<article>
											<span><img src="images/football1.png"></span>
											<div class="content">
												<h2>&nbsp;&nbsp;&nbsp;&nbsp;구로동 풋살장</h2>
												<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;구로구 구로동</p>
											</div>
										</article>
										<article>
											<span><img src="images/football1.png"></span>
											<div class="content">
												<h2>&nbsp;&nbsp;&nbsp;&nbsp;구로동 풋살장</h2>
												<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;구로구 구로동</p>
											</div>
										</article>
										<article>
											<span><img src="images/football1.png"></span>
											<div class="content">
												<h2>&nbsp;&nbsp;&nbsp;&nbsp;구로동 풋살장</h2>
												<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;구로구 구로동</p>
											</div>
										</article>
										
									</div>
								</section>
								
								<!-- //footer.jsp -->
								<%@ include file="footer.jsp" %>
								
						</div>
					</div>


				<!-- sidebar.jsp -->
				<%@ include file="sidebar.jsp" %>
						
				

			</div>
			

		<!-- Scripts -->
			<script src="../js/jquery.min.js"></script>
			<script src="../js/browser.min.js"></script>
			<script src="../js/breakpoints.min.js"></script>
			<script src="../js/util.js"></script>
			<script src="../js/main.js"></script>

	</body>
</html>