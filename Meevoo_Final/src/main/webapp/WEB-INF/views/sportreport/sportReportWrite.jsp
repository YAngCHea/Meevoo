<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>체육시설 상세페이지</title>
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main_kmh.css" />
	</head>
	<body class="is-preload">
		
		<script>
			function srepwriteBtn(){
				if($("#srepinput").val() == null)){
					alert("내용을 입력하셔야 합니다.")
	    			$("#srepinput").focus();
	    			return false;
				}else{
					if(confirm("게시글을 저장하시겠습니까?")){
			  		}
				}
						srpwrite.submit();
				
			}
		</script>
			
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Top -->
							<%@ include file="../top.jsp" %>

							<!-- Banner -->
								<!-- <section id="banner">
									<div class="content">
										<header style="text-align: center;">
											<h1>Meevoo 체육시설 상세 페이지</h1>
											<p>section 있을때마다 아래와 같이 줄이 생김</p>
										</header>
									</div>
								</section> -->

							<!-- Section -->
								<section class="sportlistview">
									<!-- 상세설명 css -> main.css(63번째)  -->
									<div class="viewHead">
									  <form action="sportReportWrite" name="srpwrite" method="post" enctype="multipart/form-data">
										<div class="day">
											<p class="txt">제목
												<input type="text" placeholder="검색어를 입력해주세요." />
											</p>
										</div>
										<div class="day">
											<p class="txt">문의유형
												<select name="srepcontent">
														<option value="srepcontent" name="srepcontent">폐업한 시설입니다.</option>
														<option value="srepcontent" name="srepcontent">전화번호가 변경되었습니다.</option>
														<option value="srepcontent" name="srepcontent">영업시간이 변경되었습니다.</option>
														<option value="srepcontent" name="srepcontent">위치가 달라졌습니다.</option>
														<option value="srepcontent" name="srepcontent">기타 요청사항</option>
												</select>
											</p>
										</div>
										<div class="day">
											<p class="txt">해당시설
												<input type="text" name="sfno" placeholder="시설번호를 입력해주세요" />
												<%-- <select name="sfno">
													<c:forEach var="sport" items="${list}">
														<option value="sfno" name="sfno">${sport.sfno}</option>
													</c:forEach>
												</select> --%>
											</p>
										</div>
										<div class="day">
											<p class="txt">작성자
												<input type="text" name="id" placeholder="ID가 표시됨" />
											</p>
										</div>
										<div class="day">
											<p class="txt">내용
												<textarea name="srepinput" id="srepinput" value="${srepinput}" cols="110" rows="10" style="resize:none;"></textarea>
											</p>
										</div>
										<div class="day">
											<p class="txt">이미지
												<input type="file" name="file" id="file">
											</p>
										</div>
									</div>
									<br>
								</section>
								<li style="text-align: right;">
									<button class="button primary" id="srpwrite" onclick="srepwriteBtn()">저장</button>
									<button class="button" onclick="javascript:location.href='sportReportList'">취소</button>
								</li>
							  </form>
								
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