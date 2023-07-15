<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>체육시설 홈</title>
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main_kmh.css" />
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Top -->
							<%@ include file="../top.jsp" %>

								<!-- Banner -->
								<section id="banner" class="center-table">
									<div class="content">
										<header class="sportmain">
											<h1>체육시설</h1>
											<p>원하는 체육시설 리스트를 클릭해주세요.</p>
										</header>
									</div>
									<!-- 이미지 크기 조정 -> main.css 2167번째 -->
									<span class="fclty2">
										<img src="/images/fclty2.jpg" alt="" />
									</span>
								</section>
								<!-- // Banner -->

								<!-- Section -->
								<section>
									<!-- Table -->
									<div class="table-wrapper">
										<table>
											<colgroup>
												<col width="10%"  />
												<col width="*" />
												<col width="15%" />
												<col width="15%"/>
												<col width="10%"/>
											</colgroup>
											<thead>
												<tr>
													<th>NO.</th>
													<th>시설명</th>
													<th>운동종목</th>
													<th>동이름</th>
													<th>별점</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="sport" items="${list}">
												<tr>
													<td>${sport.sfno}</td>
													<td>
														<a href="/sport/sportListView?sfno=${sport.sfno}&page=${page}" class="lightgray">${sport.sfnm}</a>
													</td>
													<td>${sport.scate}</td>
													<td>${sport.dongcate}</td>
													<td>${sport.savgstar}</td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
										<!-- // Table -->
										
										<!-- 페이지 넘기는 버튼으로 이동하는 옵션 -->
										<!-- main_kmh.css 1398번쨰 줄 수정 -->
										<ul class="pagination" >
											<!-- 첫 페이지 이동 -->
									        <c:if test="${page != 1}">
									         <a href="/sport/sportList?page=1" class="button"><li><<</li></a>
									        </c:if>
									        <c:if test="${page == 1}">
									         <a class="button disabled"><li><<</li></a>
									        </c:if>
									        <!-- 이전페이지 이동 -->
									        <c:if test="${page>1}">
									          <li><a href="/sport/sportList?page=${page-1}" class="button">Prev</a></li>
									        </c:if>
										    <c:if test="${page == 1}">
									       	  <li><a class="button disabled">Prev</a></li>
									        </c:if>
									        <!--  -->
									        <!--페이지 리스트-->
									        <c:forEach begin="${startPage}" end="${endPage}" step="1" var="num">
									          <c:if test="${num != page }">
										      	<a>
										      	  <li><a href="/sport/sportList?page=${num}" class="page">${num}</a></li>
										      	</a>
									      	  </c:if>
									      	  <c:if test="${num == page }">
										      	  <li><a class="page active">${num}</a></li>
									      	  </c:if>
									        </c:forEach>
									        <!--  -->
									        <!-- 다음페이지 이동 -->
									        <c:if test="${page<maxPage}">
									         <li><a href="/sport/sportList?page=${page+1}" class="button">Next</a></li>
									        </c:if>
									        <c:if test="${page==maxPage}">
									         <li><a class="button disabled">Next</a></li>
									        </c:if>
									        <!-- 끝페이지 이동 -->
									        <c:if test="${page != maxPage}">
									         <a href="/sport/sportList?page=${maxPage}" class="button"><li>>></li></a>
									        </c:if>
									        <c:if test="${page == maxPage}">
									         <a class="button disabled"><li>>></li></a>
									        </c:if>
										</ul>
										
									</div>
								</section>
								<!-- // Section -->
								
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