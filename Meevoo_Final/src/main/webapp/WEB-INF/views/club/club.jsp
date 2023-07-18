<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>모임 목록</title>
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
								<section id="banner" style="box-sizing: border-box; margin:0.5em; padding:2em 2em 2em 0; height: 250px;">
									<div class="content" style="box-sizing: border-box; weidth: 60%;">
										<header style="vertical-align: center;">
											<h1>운동 모임</h1>
											<h3>나에게 맞는 모임을 찾아보세요.</h3>
											<h4>좌측 사이드 바에서 관심 운동과 관심 지역을 선택할 수 있습니다.</h4>
										</header>
									</div>
									<span class="image object" style="text-align: center; width: 40%; margin: 0;">
										<img src="../images/main/club2.png" style="width: 300px; margin: 0;"/>
									</span>
								</section>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>회원님을 위한 모임 추천</h2>
									</header>
									<div class="features">
										<article>
											<span style="margin: 25px;">
											  <img src="../images/sports/tennisIcon.png" style="width:150px;" />
											</span>
											<div class="content" style="margin:  0, 0, 100px, 0;">
											 <div style="width:287px;">
											    <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: rgba(135, 206, 250, 0.25); font-weight: bold; ">테니스</span>
											    &nbsp;
											    <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: rgba(144, 238, 144, 0.25); font-weight: bold; ">D-2</span>
											    &nbsp;
											    <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: rgba(216, 191, 216, 0.30); font-weight: bold; ">모집중</span>
											 </div>
											    <br>
												<h3>조고비치가 되어 봅시다</h3>
												<span>
												  <img src="../images/general/locationPin.png" style="width:10px" />
												</span>
												<span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; font-weight: bold; ">구로동</span>
												&nbsp;
												<span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; font-weight: bold; ">7.9(일) 오후 2:20</span>
											</div>
										</article>
										<article>
											<span style="margin: 25px;">
											  <img src="../images/sports/climbingIcon.png" style="width:120px;" />
											</span>
											<div class="content" style="margin:  0, 0, 100px, 0;">
											 <div style="width:287px;">
											    <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: rgba(135, 206, 250, 0.25); font-weight: bold; ">클라이밍</span>
											    &nbsp;
											    <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: rgba(144, 238, 144, 0.25); font-weight: bold; ">D-5</span>
											    &nbsp;
											    <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: rgba(216, 191, 216, 0.30); font-weight: bold; ">모집중</span>
											 </div>
											    <br>
												<h3>롯데월드 타워 오를 사람!</h3>
												<span>
												  <img src="../images/general/locationPin.png" style="width:10px" />
												</span>
												<span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; font-weight: bold; ">구로동</span>
												&nbsp;
												<span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; font-weight: bold; ">7.12(수) 오후 12:30</span>
											</div>
										</article>
										
										
									</div>
								</section>
								
							<!-- Section -->
								<section>
									<header class="major">
										<h2>회원님을 기다리는 모임들</h2>
									</header>
									<div class="features">
									
									  <c:forEach var="club" items="${list}">
									  
										  <article>
												<span style="margin: 25px;">
												  <c:if test="${club.scate eq '스케이트'}">
												    <img src="../images/sports/iceSkateIcon.png" style="width:150px;" />
												  </c:if>
												  <c:if test="${club.scate eq '골프'}">
												    <img src="../images/sports/golfIcon.png" style="width:150px;" />
												  </c:if>
												  <c:if test="${club.scate eq '배드민턴'}">
												    <img src="../images/sports/badmintonIcon.png" style="width:150px;" />
												  </c:if>
												  <c:if test="${club.scate eq '테니스'}">
												    <img src="../images/sports/tennisIcon.png" style="width:150px;" />
												  </c:if>
												  <c:if test="${club.scate eq '탁구'}">
												    <img src="../images/sports/tableTennisIcon.png" style="width:150px;" />
												  </c:if>
												  <c:if test="${club.scate eq '풋살'}">
												    <img src="../images/sports/futsalIcon.png" style="width:150px;" />
												  </c:if>
												  <c:if test="${club.scate eq '클라이밍'}">
												    <img src="../images/sports/climbingIcon.png" style="width:150px;" />
												  </c:if>
												  <c:if test="${club.scate eq '볼링'}">
												    <img src="../images/sports/bowlingIcon.png" style="width:150px;" />
												  </c:if>
												  <c:if test="${club.scate eq '농구'}">
												    <img src="../images/sports/basketballIcon.png" style="width:150px;" />
												  </c:if>
												</span>
												<div class="content" style="margin:  0, 0, 100px, 0;">
												 <div style="width:287px;">
												    <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: rgba(244, 244, 244, 0.5); font-weight: bold; ">${club.scate }</span>
												    &nbsp;
												    <jsp:useBean id="now" class="java.util.Date" />
												    <fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowfmtTime" scope="request"/>
												    <fmt:parseNumber value="${club.cdodate.time / (1000*60*60*24)}" integerOnly="true" var="dbDtParse" scope="request"/>
												    <c:set var="num" value="${nowfmtTime - dbDtParse}" />
												    <c:if test ="${(nowfmtTime - dbDtParse)>0}">
													    <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: rgba(244, 244, 244, 0.5); font-weight: bold; ">
														      D+${nowfmtTime - dbDtParse}
													    </span>
												    </c:if>
												    <c:if test ="${(nowfmtTime - dbDtParse)<0}">
													    <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: #f56a6a; color: #ffffff; font-weight: bold; ">
														      D${nowfmtTime - dbDtParse}
													    </span>
												    </c:if>
												    <c:if test ="${(nowfmtTime - dbDtParse)==0}">
													    <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: #f56a6a33; font-weight: bold; ">
														      D-${nowfmtTime - dbDtParse}
													    </span>
												    </c:if>
												    &nbsp;
												    <c:if test="${club.cnowstatus eq '모집중'}">
												      <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: #f56a6a; color: #ffffff; font-weight: bold; ">${club.cnowstatus }</span>
												    </c:if>
												    <c:if test="${club.cnowstatus eq '모집완료'}">
												      <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: #f56a6a33; font-weight: bold; ">${club.cnowstatus }</span>
												    </c:if>
												    <c:if test="${club.cnowstatus eq '모임완료'}">
												      <span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; background-color: rgba(244, 244, 244, 0.5); font-weight: bold; ">${club.cnowstatus }</span>
												    </c:if>
												 </div>
												    <br>
													<h3>${club.cnm }</h3>
													<span>
													  <img src="../images/general/locationPin.png" style="width:10px" />
													</span>
													<span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; font-weight: bold; ">${club.dongcate }</span>
													&nbsp;
													<span style="display inline-block; padding: 3px; border: 1px; border-radius: 10%; font-weight: bold; ">
													  <fmt:formatDate value="${club.cdodate}" type="both" dateStyle ="long" pattern="yyyy-MM-dd (E) a hh:mm" />
													</span>
												</div>
											</article>
										
									  </c:forEach>
									
										
									  
										
										<!-- 
										<h4>Pagination</h4>
											<ul class="pagination">
												<li><span class="button disabled">Prev</span></li>
												<li><a href="#" class="page active">1</a></li>
												<li><a href="#" class="page">2</a></li>
												<li><a href="#" class="page">3</a></li>
												<li><span>&hellip;</span></li>
												<li><a href="#" class="page">8</a></li>
												<li><a href="#" class="page">9</a></li>
												<li><a href="#" class="page">10</a></li>
												<li><a href="#" class="button">Next</a></li>
											</ul>
										
										 -->
										
										
										<div class="col-12" style="margin: 150px auto;">
											<ul class="pagination">
												<li><span class="button">Prev</span></li>
												
												<c:forEach var="num" begin="${pageDto.startPage}" end="${pageDto.endPage}" step="1" >
												  <li><a href="/club/club?page=${num}" class="page">${num}</a></li>
												</c:forEach>
												
												<li><a href="#" class="button">Next</a></li>
											</ul>
										</div>
										
										<!-- 버튼 test -->
										
										<!-- 버튼 목록 -->
										<div class="col-12" style="margin: 150px auto;">
											<ul class="pagination">
											    <!-- 첫 페이지 이동 -->
											    <c:if test="${pageDto.page !=1}">
												  <li>
												    <span class="button">
												      <img src="../images/general/pageFirst.png" class="first" style="width:15px; vertical-align: middle;" />
												    </span>
												  </li>
											    </c:if>
											    <c:if test="${pageDto.page ==1}">
												  <li>
												    <span class="button">
												      <img src="../images/general/pageFirst.png" class="first" style="width:15px; vertical-align: middle;" />
												    </span>
												  </li>
											    </c:if>
												<!-- 첫 페이지 이동 끝-->
												
												<!-- 이전 페이지 이동 -->
												<c:if test="${pageDto.page>1}">
												  <a href="/club/club?page=${pageDto.page-1}">
												    <li>
												      <span class="button">
												        <img src="../images/general/pagePrevious.png" class="previous" style="width:15px; vertical-align: middle;" />
												      </span>
												    </li>
												  </a>
												</c:if>
												<c:if test="${pageDto.page==1}">
												    <li>
												      <span class="button">
												        <img src="../images/general/pagePrevious.png" class="previous" style="width:15px; vertical-align: middle;" />
												      </span>
												    </li>
												</c:if>
												<!-- 이전 페이지 이동 끝 -->
												<!-- 페이지 리스트 -->
												<c:forEach begin="${pageDto.startPage}" end="${pageDto.endPage}" step="1" var="num">
												  <c:if test="${num != pageDto.page}">
												    <a href="/club/club?page=${num}" >
												      <li class="page"><div>${num}</div></li>
												    </a>
												  </c:if>
												  <c:if test="${num == pageDto.page}">
												    <li class="page active"><div>${num}</div></li>
												  </c:if>
												</c:forEach>
												<!-- 페이지 리스트 끝-->
												<!-- 다음 페이지 이동 -->
												<c:if test="${pageDto.page<pageDto.maxPage}">
												  <a href="/club/club?page=${pageDto.page+1}">
												    <li>
												      <span class="button">
												        <img src="../images/general/pageNext.png" class="next" style="width:15px; vertical-align: middle;" />
												      </span>
											  	    </li>
												  </a>
												</c:if>
												<c:if test="${pageDto.page==pageDto.maxPage}">
												    <li>
												      <span class="button">
												        <img src="../images/general/pageNext.png" class="next" style="width:15px; vertical-align: middle;" />
												      </span>
											  	    </li>
												</c:if>
												<!-- 다음 페이지 이동 끝-->
												<!-- 끝 페이지 이동 -->
												<c:if test="${pageDto.page != pageDto.maxPage}">
												  <a href="/club/club?page=${pageDto.maxPage}">
												    <li>
												      <span class="button">
												        <img src="../images/general/pageLast.png" class="last" style="width:15px; vertical-align: middle;" />
												      </span>
												    </li>
												  </a>
												</c:if>
												<c:if test="${pageDto.page != pageDto.maxPage}">
												    <li>
												      <span class="button">
												        <img src="../images/general/pageLast.png" class="last" style="width:15px; vertical-align: middle;" />
												      </span>
												    </li>
												</c:if>
												<!-- 끝 페이지 이동 끝-->
											</ul>
										</div>
										<!-- 버튼 목록 끝 -->
										<!-- 버튼 test 끝-->
										
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