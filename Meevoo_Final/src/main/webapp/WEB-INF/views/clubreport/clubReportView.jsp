<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>모임 신고글 상세페이지</title>
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main_kmh.css" />
	</head>
	<body class="is-preload">
			
		<script>
		  function cReportDeleteBtn(){
			  if(confirm("게시글을 삭제하시겠습니까?")){
				  alert("${crepno}");
				  location.href="clubReportDelete?crepno=${crepno}";
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
												<li>${crdto1.crepno}. ${crdto1.crepcontent}</span></li>
											</ul>
										</div>
										<div class="day">
											<p class="txt">해당시설 번호<span>${crdto1.crepno}</span></p>
											<p class="txt">문의유형<span>${crdto1.crepcontent}</span></p>
											<p class="txt">작성자<span>${crdto1.id}</span></p>
											<p class="txt">작성일<span><fmt:formatDate value="${crdto1.crepdate}" pattern="yyyy-MM-dd"/></span></p>
										</div>
										<div class="day">
											<p class="txt">내용<span>${crdto1.crepcontent}</span></p>
										</div>
										
										
									
									</div>
									<br>
									<!-- Buttons 수정   main.css (1294번째)-->
									
									<ul class="actions">
									<!-- 
											<c:if test="${sessionId == id}">
											  <li><a href="clubReportUpdate?crepno=${crdto1.crepno}&page=${pagedto.page}&category=${category}&search_input=${search_input}" class="button primary">수정</a></li>
											  <li><a onclick="cReportDeleteBtn()" class="button">삭제</a></li>
											</c:if>
											<c:if test="${sessionId == 'admin'}">
											  <li><a onclick="cReportDeleteBtn()" class="button">삭제</a></li>
											</c:if>
									 -->
										<li><a href="clubReportList?page=${pagedto.page}&category=${category}&search_input=${search_input}" class="button primary">문의 목록으로</a></li>
									</ul>
									 
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