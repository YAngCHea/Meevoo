<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>체육시설 문의글 상세페이지</title>
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main_kmh.css" />
	</head>
	<body class="is-preload">
			
		<script>
		  function srpdeleteBtn(){
			  if(confirm("게시글을 삭제하시겠습니까?")){
				  alert("${srdto.srepno}");
				  location.href="sportReportListDelete?srepno=${srdto.srepno}";
			  }
		  }
		</script>
		
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Top -->
							<%@ include file="../top.jsp" %>

							<!-- Section -->
								<section class="sportlistview">
									<!-- 상세설명 css -> main.css(63번째)  -->
									<div class="viewHead">
										<div class="subject">
											<ul>
												<li>${srdto.srepno}. 볼링장에 고라니가 나타났어요!!</span></li>
											</ul>
										</div>
										<div class="day">
											<p class="txt">해당시설 번호<span>${srdto.sfno}</span></p>
											<p class="txt">문의유형<span>${srdto.srepcontent}</span></p>
											<p class="txt">작성자<span>${srdto.id}</span></p>
											<p class="txt">작성일<span><fmt:formatDate value="${srdto.srepdate}" pattern="yyyy-MM-dd"/></span></p>
										</div>
										<div class="day">
											<p class="txt">내용<span>${srdto.srepinput}</span></p>
										</div>
										<c:if test="${srdto.srepimg != null}">
										<div class="day">
											<p class="txt">사진<span><br>
											<c:forEach var="image" items="${fn:split(srdto.srepimg, ',')}">
												<img style="heigth:330px;width:330px" src="/upload/${image}"/>
											</c:forEach>
											</p>
										</div>
										</c:if>
									
									</div>
									<br>
									<!-- Buttons 수정 ->  main.css (1294번째)-->
									<ul class="actions">
											<c:if test="${sessionId == srdto.id}">
											  <li><a href="sportReportUpdate?srepno=${srdto.srepno}&page=${page}&category=${category}&srep_word=${srep_word}" class="button primary">수정</a></li>
											  <li><a onclick="srpdeleteBtn()" class="button">삭제</a></li>
											</c:if>
											<c:if test="${sessionId == 'admin'}">
											  <li><a onclick="srpdeleteBtn()" class="button">삭제</a></li>
											</c:if>
										<li><a href="sportReportList?page=${page}&category=${category}&srep_word=${srep_word}" class="button primary">문의 목록으로</a></li>
									</ul>
								</section>
								
								<!-- 시설 리뷰 -->
								<!-- 리뷰 css -> main.css (78번째) -->
								<section class="sportreview">
									<div class="replyBox">
										<br>
										<ul>
											<li class="in">
												<li class="name"><span>${comList.size() }</span> 관리자의 답변이 달렸습니다.</li>
												<form name="myform" id="myform" method="post" >
													<div style="display: flex;">
														<textarea class="col-auto form-control" type="text" id="reviewContents"
																  placeholder="시설 리뷰글을 작성해주세요!" ></textarea>
																  <!-- 버튼 크기 수정 main.css 1644번째 -->
													    <li class="btn"><a onclick="reviewBtn()" class="button primary large">등록</a></li>
													</div>
												</form>	
											</li>
										</ul>
									</div>
									
								<fieldset>
									<div class="replyBox">
										<!-- 관리자가 쓴 답변  -->
										<ul>
											<li class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;관리자 <span>&nbsp;&nbsp;&nbsp;[2023-07-06&nbsp;&nbsp;15:01:59]</span>
											
											</li>
											<br>
											<li class="txt"> 관리자가 답변을 달아줌</li>
											<li class="btn">
												<a onclick="deleteBtn()" class="button small">삭제</a>
											</li>
										</ul>
										
									</div>
								</fieldset>
								<!-- //댓글 -->
								
								</section>
								
						<br>	
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