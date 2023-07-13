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
		<title>Generic - Editorial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main.lee.css" />
		<link rel="stylesheet" href="../css/profil.lee.css">
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
			table,tr,td{border: hidden; }
			#list1_1 {width:400px;}
			.list2{width:200px; text-align: right;}
			.list3{width:200px;}
			#list1_1 {float:}
			#list1_2 {/* position: relative; */ width: 300px; height: 300px; border-radius: 50%; /*둥그런 원으로 만들기 위함*/ overflow: hidden; float:left;}
			#list1_2 img {/* position: absolute; top: 0; left: 0; */ width: 100%; height: 100%; object-fit: cover;}
			
			
		</style>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- top.jsp -->
							<%@ include file="../top.jsp" %>

							<!-- Content -->
								<section>
									<header class="main">
										<h2>내 정보</h2>
									</header>

									<!-- <span class="image main"><img src="images/pic11.jpg" alt="" /></span> -->
									
									<!-- <div id="list1_2">
										<img src="/images/clubPick1.png">
									</div> -->
									
									
									<!-- <div>
									<table>
										<tr>
											<td id="list1_1" rowspan="6">
												<div id="list1_2" style="margin:0 auto;">
													<img src="/images/clubPick1.png">
												</div>
											</td>
											<td class="list2">이름 :</td>
											<td class="list3">손운동</td>
										</tr>
										<tr>
											<td>1</td>
											<td class="list2">성별 :</td>
											<td class="list3">남</td>
										</tr>
										<tr>
											<td>1</td>
											<td class="list2">나이 :</td>
											<td class="list3">30</td>
										</tr>
										<tr>
											<td>1</td>
											<td class="list2">아이디 :</td>
											<td class="list3">son0712</td>
										</tr>
										<tr>
											<td>1</td>
											<td class="list2">비밀번호 :</td>
											<td class="list3">******</td>
										</tr>
										<tr>
											<td>1</td>
											<td class="list2">이메일 :</td>
											<td class="list3">sonworkout@gmail.com</td>
										</tr>
										<tr>
											<td></td>
											<td class="list2">회원가입일자 :</td>
											<td class="list3">2023.07.12</td>
										</tr>
										<tr>
											<td></td>
											<td class="list2">내 온도 :</td>
											<td class="list3">36.5 ℃</td>
										</tr>
									</table>
									</div> -->
									
									<div class="wrapper1" style="border:1px solid black; width:400px; height:400px;">
										<div class="wrapper1">
										<div class="left1" style="border:1px solid black;">
											<img src="/images/fclty1.png" alt="user" width="100px;">
											<h4>사진 수정</h4>
										</div>
										<div class="right1">
											<div class="info1" style="border:1px solid black;">
												<h3>내 정보1</h3>
												<div class="info_data1">
													<div class="data1">
														<h4>이름 : </h4>
														<span>손동운</span>
													</div>
													<div class="data1">
														<h4>아이디 : </h4>
														<span>son0712</span>
													</div>
												</div>
											</div>
											
											<div class="info2" style="border:1px solid black;">
												<h3>내 정보2</h3>
												<div class="info_data2">
													<div class="data1">
														<h4>성별 : </h4>
														<span>남</span>
													</div>
													<div class="data1">
														<h4>비밀번호 : </h4>
														<span>*****</span>
													</div>
												</div>
											</div>
											<div class="data1">
														<h4>나이 : </h4>
														<span>30</span>
													</div>
													
													
													<div class="data1">
														<h4>이메일 : </h4>
														<span>sonworkout@gmail.com</span>
													</div>
													<div class="data1">
														<h4>회원가입일자 : </h4>
														<span>2023.07.12</span>
													</div>
													<div class="data1">
														<h4>내 온도 : </h4>
														<span>36.5 ℃</span>
											</div>
										</div>
										
									</div>
									</div>
									
									<div class="wrapper2" style="border:1px solid black; width:400px; height:400px;">
										
										
									</div>



									<!-- <h2>Magna etiam veroeros</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus rutrum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tristique libero eu nibh porttitor fermentum. Nullam venenatis erat id vehicula viverra. Nunc ultrices eros ut ultricies condimentum. Mauris risus lacus, blandit sit amet venenatis non, bibendum vitae dolor. Nunc lorem mauris, fringilla in aliquam at, euismod in lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In non lorem sit amet elit placerat maximus. Pellentesque aliquam maximus risus, vel sed vehicula.</p>
									<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fersapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique lorem ipsum dolor.</p>

 -->
								</section>
								
								<!-- //footer.jsp -->
								<%@ include file="../footer.jsp" %>

						</div>
					</div>

				<!-- sidebar.jsp -->
				<%@ include file="../sidebar.jsp" %>
													<!-- <div class="data1">
														<h4>나이 : </h4>
														<span>30</span>
													</div>
													
													
													<div class="data1">
														<h4>이메일 : </h4>
														<span>sonworkout@gmail.com</span>
													</div>
													<div class="data1">
														<h4>회원가입일자 : </h4>
														<span>2023.07.12</span>
													</div>
													<div class="data1">
														<h4>내 온도 : </h4>
														<span>36.5 ℃</span>
													</div> -->
				

			</div>

		<!-- Scripts -->
			<script src="../js/jquery.min.js"></script>
			<script src="../js/browser.min.js"></script>
			<script src="../js/breakpoints.min.js"></script>
			<script src="../js/util.js"></script>
			<script src="../js/main.js"></script>

	</body>
</html>