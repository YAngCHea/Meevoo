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
		<title>myprofil</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main.lee.css" />
		<link rel="stylesheet" href="../css/profil.lee.css">
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
			/* table,tr,td{border: hidden; }
			#list1_1 {width:400px;}
			.list2{width:200px; text-align: right;}
			.list3{width:200px;}
			#list1_1 {float:}
			#list1_2 {/* position: relative; */ width: 300px; height: 300px; border-radius: 50%; /*둥그런 원으로 만들기 위함*/ overflow: hidden; float:left;} */
			#pic1 img {/* position: absolute; top: 0; left: 0; */ width: 100%; height: 100%; object-fit: cover;}
			.main1 h2{margin: 0 0 35px 0; text-align: center; border-bottom: 1px solid lightgray;}
			.wrapper1{border:1px solid black; width:800px; height:500px; margin:0 auto;}
			.wrapper2{border:1px solid black; width:800px; height:400px; margin:10px auto;}
			.info6{width:370px; margin:10px; font-size:18px; display: inline-block; border:1px solid black;}
			.info6 select{width:200px; float:right;}
			.nic1{margin:10px; font-size:15px;}
			.cell{margin:10px; font-size:15px;}
			#info1_1, #info1_2, #info1_3, #info1_4, #info1_5, #info1_6, #info1_7, #info1_8
				{margin:10px; font-size:15px; border:1px solid black; display: flex;}
			.profile{height: 180px;}
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
								<section class="section1">
									<div>
										<header class="main1">
											<h2>내 정보</h2>
										</header>
	
										<!-- <span class="image main"><img src="images/pic11.jpg" alt="" /></span> -->
										
									
										
										<div class="wrapper1">
											<div class="profile">
			                                    <div id="preview" class="profile-img"><img src="common/images/profile-default.svg"></div>
												<input type="file" name="mb_picture" accept=".jpg, .png, .jpeg, .bmp, .tif, .gif, .svg" id="profile-photo" />
												<label for="profile-photo">프로필 사진 바꾸기</label>
											</div>
											<!-- <div class="pic1" style="border:1px solid black;">
												<img src="/images/clubPick1.png" alt="user" width="100px;">
												<h4>사진 수정</h4>
											</div> -->
											<div class="info1">
													<div id="info1_1">
														<div>이름 : </div>
														<div>손운동</div>
													</div>
													<div id="info1_2">	
														<div>아이디 : </div>
														<div>son0712</div>
													</div>
													<div id="info1_3">
														<div>성별 : </div>
														<div>남</div>
													</div>
													<div id="info1_4">	
														<div>비밀번호 : </div>
														<div>******</div>
													</div>
													<div id="info1_5">
														<div>나이 : </div>
														<div>30</div>
													</div>
													<div id="info1_6">
														<div>이메일 : </div>
														<div>sonworkout@gmail.com</div>
													</div>
													<div id="info1_7">
														<div>내 온도 : </div>
														<div>36.5 ℃</div>
													</div>
													<div id="info1_8">
														<div>회원가입일자 : </div>
														<div>2023.07.12</div>
													</div>
											</div>
											
										</div>
										
										<div class="wrapper2">
											<div class="info2">
												<div class="nic1">
													<div style="border:1px solid black;">
														<div>닉네임 : </div>
													</div>
												</div>
												<div>
													<div class="info6">
														<div>관심지역 : 
															<select name="location">
																<option value="dong1">개봉동</option>
																<option value="dong2">신도림동</option>
																<option value="dong3">고척동</option>
																<option value="dong4">구로동</option>
															</select>
														</div>
													</div>
													<div class="info7">
														<div class="info6">관심운동 : 
															<select name="exercise">
																<option value="tennis">테니스</option>
																<option value="football">축구</option>
																<option value="baseball">야구</option>
																<option value="badminton">배드민턴</option>
															</select>
														</div>
													</div>
												</div>
												<div class="cell">
													<div class="subject">자기소개</div>
													<div>
														<textarea name='mb_info'></textarea>
													</div>
												</div>
											</div>
										</div>
	
	
	
	
									</div>
								</section>
								
								<!-- //footer.jsp -->
								<%@ include file="../footer.jsp" %>

						</div>
					</div>

				<!-- sidebar.jsp -->
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