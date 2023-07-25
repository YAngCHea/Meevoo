<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
			.main1 h2{margin: 35px 0 35px 0; text-align: center; border-bottom: 1px solid lightgray; font-size: 40px;}
			.profile{height: 180px; text-align: center; margin:20px 0;}
			#preview{margin:0 0 20px;}
			#preview img{width:150px;}
			#info1_1, #info1_2,#info1_3, #info1_4, #info1_5, #info1_6, #info1_7, #info1_8
				{width:150px; margin:20px 100px 10px 100px; font-size:15px; float:left;}
			#info1_11, #info1_12{display: flex; flex-direction: row;}
			#info1_21, #info1_22{display: flex; flex-direction: row;}
			#info1_31, #info1_32{display: flex; flex-direction: row;}
			#info1_41, #info1_42{display: flex; flex-direction: row;}
			.wrapper1{border-bottom:1px dotted #f56a6a; width:800px; height:500px; margin:0 auto;}
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
										<!-- 프로필 사진 넣는 부분 -->
											<div class="profile">
			                                    <div id="preview" class="profile-img"><img src="/upload/${mdto.userimg}"></div>
<%-- 			                                    <div id="preview" class="profile-img"><img src="/images/${mdto.userimg}"></div> --%>
												<!-- <input type="file" name="mb_picture" accept=".jpg, .png, .jpeg, .bmp, .tif, .gif, .svg" id="profile-photo" />
												<label for="profile-photo">프로필 사진 수정</label> -->
											</div>
											<div class="info1">
												<div>
													<div id="info1_1">
														<div id="info1_11">이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														<!-- </div>
														<div id="info1_12" name="usernm"> -->
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdto.usernm }</div>
													</div>
													<div id="info1_2">	
														<div id="info1_21">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														<!-- </div>
														<div id="info1_22" name="id"> -->
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdto.id }</div>
													</div>
												</div>
												<div>
													<div id="info1_3">
														<div id="info1_31">성별&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														<!-- </div>
														<div id="info1_32" name="gender"> -->
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdto.gender }</div>
													</div>
													<div id="info1_4">	
														<div id="info1_41">비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														<!-- </div>
														<div id="info1_42" name="pw"> -->
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdto.pw }</div>
													</div>
												</div>
												<div>
													<div id="info1_5">
														<div id="info1_51">나이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														<!-- </div>
														<div id="info1_52" name="birth"> -->
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdto.birth } 년생</div>
													</div>
													<div id="info1_6">
														<div id="info1_61">이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														<!-- </div>
														<div id="info1_62" name="email"> -->
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdto.email }</div>
													</div>
												</div>
												<div>
													<div id="info1_7">
														<div id="info1_71">내 온도&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														<!-- </div>
														<div id="info1_72" name="totaltemp"> -->
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdto.totaltemp }℃</div>
													</div>
													<div id="info1_8">
														<div id="info1_81">회원가입일자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														<!--  </div>
														<div id="info1_82"> -->
														<td>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<fmt:formatDate value="${mdto.joindate}" pattern="yyyy-MM-dd" />
														</td>
														</div>
													</div>
												</div>
											</div>
											
										</div>
										
										<div class="wrapper2">
											<div class="info2">
												<div class="nic1">
													<div class="nic2">
														<div>닉네임&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdto.nicknm }</div>
													</div>
												</div>
												<div>
													<div class="info2">
														<div class="info3">관심지역&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdto.dongcate }
														</div>
													</div>
													<div class="info2">
														<div class="info3">관심운동&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mdto.scate }
														</div>
													</div>
												</div>
												<div class="cell">
													<div class="subject">자기소개</div>
													<div>
														<textarea id="textbox" name="salfintro" value="${mdto.selfintro }" readonly>${mdto.selfintro }</textarea>
													</div>
												</div>
											</div>
										</div>
	
									</div>
									<!-- Btn Area -->
									<div class="btnArea">
										<div class="bCenter">
											<ul>
												<!-- form 을 사용했을때 button 에서 type=button 을 안넣으면 다시 이 페이지를 돌기때문에 href가 안먹힌다. -->
												<li><button type="button" style="cursor:pointer;" onclick="EditBtn()" class="button small fit">수정</button></li>
												<li><button type="button" style="cursor:pointer;" onclick="DeleteBtn()" class="button primary small fit">탈퇴</button></li>
											</ul>
											<script type="text/javascript">
												function EditBtn(){
													if(confirm("수정페이지로 이동합니다.")){
														//alert("test");
														location.href="/mypage/myProfilEdit";
													}else{
														return false;
														
													}
													
												}
											</script>
											<script>
												function DeleteBtn(){
													if(confirm("진짜로 탈퇴하시겠습니까?")){
														alert("${mdto.id}");
														location.href="/member/deleteUser?id=${mdto.id}";
													}
												}
											</script>
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