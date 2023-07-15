<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
						<span class="opener">운동모임</span>
						<ul>
							<li><a href="index">운동모임 홈</a></li>
							<li><a href="index">운동모임 게시판</a></li>
							<li><a href="index">운동모임 작성</a></li>
						</ul>
					</li>
					<li>
						<span class="opener">체육시설</span>
						<ul>
							<li><a href="/sport/sportList">체육시설 게시판</a></li>
							<li>체육시설 게시판으로 이동하게 코드 설정하기</li>
						</ul>
					</li>
					<li>
						<span class="opener">내 페이지</span>
						<ul>
							<li><a href="/mypage/myProfil">내 정보</a></li>
							<li><a href="/mypage/myClub">내 운동모임</a></li>
							<li><a href="/mypage/mySport">내 체육시설</a></li>
						</ul>
					</li>
					<li>
						<span class="opener">고객센터</span>
						<ul>
							<li><a href="index">공지사항</a></li>
							<li><a href="index">FAQ / Q&A</a></li>
						</ul>
					</li>
				</ul>
			</nav>

	</div>
</div>