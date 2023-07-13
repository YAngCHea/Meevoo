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
<title>Join</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" href="../css/main.lee.css" />
<link rel="stylesheet" href="../css/login.lee.css" /> 
<link rel="stylesheet" href="../css/content.lee.css" />
<style>
	/*.contents{width:500px;}
	.member h2{width:500px; }
	.memberbd table tr{height:10px; }
	.memberbd ul>li{width:200px; }
	#emailList{width:120px;}
	#email{width:100px;}
	.pta li{padding:0; width:20px;}
	#valign1 {width:20px;}
	.r10{width:170px;}
	 .gender {height: 40px;} 
	input[type="checkbox"] + label,
    input[type="radio"] + label {
    height: 10px;
    
    }
  
	input[type="checkbox"] + label:before,
	input[type="radio"] + label:before{
	height: 10px;
	}*/
	
</style>
<!-- 제이쿼리 최신 -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function memberBtn(){
		let nameCheck = /^[ㄱ-ㅎ가-힣]+$/ ; // ^ 는 시작 [모든 국문자] + 는 하나이상 $ 는 끝
		let numCheck = /^[0-9]+$/ ;  //숫자인지
		let alphaCheck = /^[a-zA-Z]+$/ ; //영문자인지
		let etcCheck = /^[!@#$%^&*,.?_-]+$/ ; //특수문자인지
		let idCheck = /^[a-zA-Z0-9_]{2,5}$/ ; //영문자, 숫자, _ 만 가능 {} 는 자릿수
		let idCheck2 = /^[a-zA-Z]{1}[a-zA-Z0-9_]{2,5}$/ ; //1번째 무조건 영문자만 가능
		let pwCheck = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*]).{2,7}$/ ;  // ? 는 비교 . 은 한개씩 * 모든 것  즉 한개씩 모든 것을 가져와서 비교해라 한개라도 있으면 True 
		let pwCheck2 = /^[0-9]{5}$/ ;
		let phoneCheck = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/ ; 010-1111-1111
		
		//패스워드 입력
		if(!pwCheck2.test($("#mem_pw").val())){
			alert("5자리 숫자만 입력이 가능합니다.");
			$("#mem_pw").focus();
			return false;
		}else{
			alert("성공!!!!");
		}
		
		
		
		//아이디 입력
		/* if(!idCheck.test($("#mem_id").val())){
			alert("영문,숫자,특수문자(_) 2자리 이상 입력이 가능합니다.");
			$("#mem_id").focus();
			return false;
		}else{
			alert("성공!!!!");
		} */

		
		//이름 입력
		/* let name_len = $("#mem_name").val().length
		//이름(한글만 입력 가능)
		if(nameCheck.test($("#mem_name").val())){
			if(name_len<2){
				alert("두글자 이상 입력하셔야 합니다.");
				$("#mem_name").focus();
				return false;
			}else{
				alert("성공");
			}
		}else{
			alert("한글만 입력가능합니다.");
			$("#mem_name").focus();
			return false;
		} */
		
		
	}
</script>


</head>
	
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

						<!-- top.jsp -->
						<%@ include file="../top.jsp" %>


							 	<!-- contents -->
								<div id="contents">
									<div id="member">
										<h2><strong>회원가입</strong>
										<span>회원으로 가입하시면 보다 더 다양한 혜택을 누리실 수 있습니다.</span></h2>
										
					
										<div class="attention">
											<ul>
												<li>* 표시된 항목은 필수 항목이므로 반드시 입력하셔야 회원가입이 진행됩니다.</li>
											</ul>
										</div>
					
										<form action="" name="memberFrm" method="post">
										
										
										<div class="memberbd">
											<table summary="이름, 아이디, 비밀번호, 비밀번호 확인, 이메일, 이메일확인, 주소, 생년, 성별, 스포츠 종목 순으로 회원가입 정보를 등록할수 있습니다." class="memberWrite" border="1" cellspacing="0">
												<caption display="none">회원가입 입력</caption>
												<colgroup>
												<col width="22%" class="tw30" />
												<col width="*" />
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><span>이름 *</span></th>
														<td>
															<ul class="pta">
																<li class="r10"><input type="text" class="w134" name="name" id="mem_name"/></li>
																<li style="padding:10px 0 0 0;" ><span class="mvalign">※ 한글만 사용가능.</span></li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row" style="height:56.59px;"><span>아이디 *</span></th>
														<td style="height:56.59px;">
															<ul class="pta" style="margin:0;">
																<li class="r10"><input type="text" class="w134" id="mem_id"/></li>
																<li style="width:100px; padding:8px 0 0 0;"><a href="#" class="button primary small fit">중복확인</a></li>
																<li class="pt5"><span class="mvalign">영문,숫자,특수문자(_) 2자리 이상 입력 가능</span></li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row"><span>비밀번호 *</span></th>
														<td>
															<ul class="pta">
																<li class="r10"><input type="text" id="mem_pw" class="w134" /></li>
																<li style="padding:10px 0 0 0;"><span class="mvalign">※ 숫자로 5자만 가능.</span></li>
															</ul>
														</td>
													</tr>
													<script>
														function pwKey(){
															let pw1 = $("#mem_pw").val();
															if(pw1 == $("#mem_pw2").val()){
																$("#pwKeyText").html("<span class='mvalign black'>* 비밀번호가 일치입니다.</span>")
															}else{
																$("#pwKeyText").html("<span class='mvalign orange'>* 비밀번호가 일치하지 않습니다.</span>")
															}
															
															console.log($("#mem_pw2").val());
															return false;
														}
													</script>
													<script></script>
													<tr>
														<th scope="row"><span>비밀번호 확인 *</span></th>
														<td>
															<ul class="pta">
																<li class="r10"><input type="text" onKeyUp="pwKey()" id="mem_pw2" class="w134" /></li>
																<li id="pwKeyText">
																<!-- 
																	<span class="mvalign black">* 비밀번호가 일치입니다.</span>
																	<span class="mvalign orange">* 비밀번호가 일치하지 않습니다.</span>
																 -->
																</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row"><span>이메일</span></th>
														<td>
															<ul class="pta">
																<li><input type="text" name="email1" id="email1" class="w134" style="width:163px;"/></li>
																<li id=valign1><span class="valign">&nbsp;@&nbsp;</span></li>
																<li class="r10"><input type="text" name="email2" id="email2" class="w134" style="width:163px;"/></li>
																<script>
																	function email_chn(){
																		console.log($("#emailList").val());
																		if($("#emailList").val()=="txt"){
																			$("#email2").val("");
																			$("#email2").attr("readonly",false);
																			$("#email2").focus();
																		}else{
																			$("#email2").val($("#emailList").val());
																			$("#email2").attr("readonly",true);
																		}
																	}
																</script>
																<li>
																	<select id="emailList" onchange="email_chn()">
																		<option value="txt" selected="selected">직접입력</option>
																		<option value="naver.com">naver.com</option>
																		<option value="daum.net">daum.net</option>
																		<option value="hanmail.net">hanmail.net</option>
																		<option value="nate.com">nate.com</option>    
																		<option value="yahoo.co.kr">yahoo.co.kr</option>    
																		<option value="paran.com">paran.com</option>    
																		<option value="empal.com">empal.com</option>    
																		<option value="hotmail.com">hotmail.com</option>    
																		<option value="korea.com">korea.com</option>    
																		<option value="lycos.co.kr">lycos.co.kr</option>    
																		<option value="dreamwiz.com">dreamwiz.com</option>    
																		<option value="hanafos.com">hanafos.com</option>    
																		<option value="chol.com">chol.com</option>    
																		<option value="gmail.com">gmail.com</option>    
																		<option value="empas.com">empas.com</option>
																	</select>&nbsp;&nbsp;&nbsp;
																</li>
																<input type="hidden" name="email" id="email">
																<li style="width:100px; padding:8px 0 0 10px;"><a href="#" class="button primary small fit">중복확인</a></li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row" id="genderchk"><span>성별 *</span></th>
														<td>
															<ul class="pta">
																<li class="gender">
																	<input type="radio" name="receive" id="receive_yes" class="radio_t" checked="checked"/><label for="receive_yes" style="width:30px; margin:7px; font-size: 12px;">남</label>
																</li>
																<li class="gender">
																	<input type="radio" name="receive" id="receive_no" class="radio_t"/><label for="receive_no" style="width:30px; margin:7px; font-size: 12px;">여</label>
																</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row"><span>주소 *</span></th>
														<td>
															<ul class="pta">
																<li>
																	<input type="text" class="w134" />&nbsp;
																</li>
																<li style="width:100px; padding:8px 0 0 10px;"><a href="zip.html" class="button primary small fit"><span>우편번호 찾기</span></a></li>
																<li class="pt5"><input type="text" class="addressType" /></li>
																<li class="cb" style="padding:5px 0 0 0;">
																	<span class="mvalign">※ 주소를 정확히 적어 주세요.</span>
																</li>
															</ul>
														</td>
													</tr>
													
													<tr>
														<th scope="row"><span>생년월일 *</span></th>
														<td>
															<ul class="pta">
																<li>
																	<select>
																		<option value='' selected="selected">선택하세요</option>
																		<script type="text/javascript">
																		//<![CDATA[
																			for(var i=1940; i<=2023; i++){
																				document.write("<option value=''>" + i + "년"+ "</option>");	
																			};
																		//]]>
																		</script>
																	</select>
																</li>
																<li>&nbsp;<span class="valign">년</span>&nbsp;&nbsp;&nbsp;</li>
															</ul>
														</td>
													</tr>
													<tr>
														<th scope="row"><span>운동종목 *</span></th>
														<td>
															<ul class="pta">
																<li>
																	<select>
																		<option value='' selected="selected">선택하세요</option>
																		<option value='' >운동종목</option>
																		</script>
																	</select>
																</li>
															</ul>
														</td>
													</tr>
													
												</tbody>
												</table>
											</div>
											
					
										</div>
					
										
										<!-- Btn Area -->
										<div class="btnArea" style="padding:0 0 20px 0;">
											<div class="bCenter">
												<ul>
													<li><a style="cursor:pointer;" onclick="memberBtn()" class="button small fit">가입하기</a></li>
													<li><a href="../main" class="button primary small fit">취소하기</a></li>
												</ul>
											</div>
										</div>
										<!-- //Btn Area -->
										</form>
										
										<script type="text/javascript" src="../js/jquery.fancybox-1.3.4.pack.js"></script>
										<link rel="stylesheet" type="text/css" href="../css/jquery.fancybox-1.3.4.css" />
										<script type="text/javascript">
										$(function(){
										
											// business input
											var firstchk = $("input:radio[name=business]:checked").attr("id");
											$(".businessTy").css("display","none");
											$("#partner").click(function(){
												$(".businessTy").css("display","block");
											});
											$("#general").click(function(){
												$(".businessTy").css("display","none");
											});
											$("#"+firstchk).click();
											
										
											// popup
											var winWidth = $(window).width();
											if(winWidth > 767){
												var layerCheck = 540;
											}else{
												var layerCheck = 320;
											}
										
											$(".addressBtn").fancybox({
												'autoDimensions'    : false,
												'showCloseButton'	: false,
												'width' : layerCheck,
												'padding' : 0,
												'type'			: 'iframe',
												'onComplete' : function() {
													$('#fancybox-frame').load(function() { // wait for frame to load and then gets it's height
													$('#fancybox-content').height($(this).contents().find('body').height());
													});
												}
											});
										
										
										});
										</script>


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