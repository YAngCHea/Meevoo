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
			#all1{width:900px; border:1px solid #f56a6a; margin:0 auto;}
			.section1{color: black;}
			.main1{width:200px; margin:0 auto;}
			.main1 h2{margin: 0 0 35px 0; text-align: center; border-bottom: 1px solid lightgray; font-size: 40px;}
			.profile{height: 180px; text-align: center; margin:20px 0;}
			#preview{margin:0 0 20px;}
			#info1_1, #info1_2, #info1_3, #info1_4, #info1_5, #info1_6, #info1_7, #info1_8
				{width:700px; margin:20px 50px 10px 50px; font-size:15px; display: flex;}
			.wrapper1{border-bottom:1px dotted #f56a6a; width:800px; height:590px; margin:0 auto;}
			.wrapper2{width:800px; height:400px; margin:10px auto;}
			.info2 .info3{width:370px; margin:10px 50px 10px 50px; font-size:15px; display: inline-block; font-size:15px;
			 line-height: 40px;}
			.info3 select{width:200px; float:right; font-size:15px;}
			.nic2{width:700px; margin:10px 50px 10px 50px; font-size:15px; display: flex;}
			.cell{margin:10px 50px 0 50px; font-size:15px;}
			.subject{margin: 5px;}
			#textbox{height: 170px; resize:none;}
			.btnArea{margin:50px 0 0; padding:0 0 20px 0;}
			.bCenter li{width:79.19px; height: 28px; margin: 0 auto;}
			
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
									<form action="" name="memberFrm" method="post">
									<div id="all1">
										<div id="header1">
											<header class="main1">
												<h2>내 정보</h2>
											</header>
										</div>
										
										<div class="wrapper1">
											<div class="profile">
			                                    <div id="preview" class="profile-img"><img src="/images/clubPick1.png"></div>
												<input type="file" name="mb_picture" accept=".jpg, .png, .jpeg, .bmp, .tif, .gif, .svg" id="profile-photo" />
												<label for="profile-photo">프로필 사진 수정</label>
											</div>
											<div class="info1">
													<div id="info1_1">
														<div>이름&nbsp;&nbsp;&nbsp;&nbsp;: </div>
														<div>&nbsp;&nbsp;&nbsp;&nbsp;손운동</div>
													</div>
													<div id="info1_2">	
														<div>아이디&nbsp;&nbsp;&nbsp;&nbsp;: </div>
														<div>&nbsp;&nbsp;&nbsp;&nbsp;son0712</div>
													</div>
													<div id="info1_3">
														<div>성별&nbsp;&nbsp;&nbsp;&nbsp;: </div>
														<div>&nbsp;&nbsp;&nbsp;&nbsp;남</div>
													</div>
													<div id="info1_4">	
														<div>비밀번호&nbsp;&nbsp;&nbsp;&nbsp;: </div>
														<div>&nbsp;&nbsp;&nbsp;&nbsp;******</div>
													</div>
													<div id="info1_5">
														<div>나이&nbsp;&nbsp;&nbsp;&nbsp;: </div>
														<div>&nbsp;&nbsp;&nbsp;&nbsp;30</div>
													</div>
													<div id="info1_6">
														<div>이메일&nbsp;&nbsp;&nbsp;&nbsp;: </div>
														<div>&nbsp;&nbsp;&nbsp;&nbsp;sonworkout@gmail.com</div>
													</div>
													<div id="info1_7">
														<div>내 온도&nbsp;&nbsp;&nbsp;&nbsp;: </div>
														<div>&nbsp;&nbsp;&nbsp;&nbsp;36.5 ℃</div>
													</div>
													<div id="info1_8">
														<div>회원가입일자&nbsp;&nbsp;&nbsp;&nbsp;: </div>
														<div>&nbsp;&nbsp;&nbsp;&nbsp;2023.07.12</div>
													</div>
											</div>
											
										</div>
										
										<div class="wrapper2">
											<div class="info2">
												<div class="nic1">
													<div class="nic2">
														<div>닉네임&nbsp;&nbsp;&nbsp;&nbsp;: </div>
														<div>&nbsp;&nbsp;&nbsp;&nbsp;운동운동짱</div>
													</div>
												</div>
												<div>
													<div class="info2">
														<div class="info3">관심지역&nbsp;&nbsp;&nbsp;&nbsp;: 
															<select name="location">
																<option value="dong1">개봉동</option>
																<option value="dong2">신도림동</option>
																<option value="dong3">고척동</option>
																<option value="dong4">구로동</option>
															</select>
														</div>
													</div>
													<div class="info2">
														<div class="info3">관심운동&nbsp;&nbsp;&nbsp;&nbsp;: 
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
														<textarea id="textbox" name="mb_info"></textarea>
													</div>
												</div>
											</div>
										</div>
	
									</div>
									<!-- Btn Area -->
									<div class="btnArea">
										<div class="bCenter">
											<ul>
												<li><button style="cursor:pointer;" onclick="memberBtn()" class="button small fit">수정</button></li>
											</ul>
										</div>
									</div>
									<!-- //Btn Area -->
									</form>
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