<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
   <head>
      <title>공지사항</title>
      <!-- 제이쿼리 최신 -->
      <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="../css/main_new_yang.css" />
   </head>
   <body class="is-preload">

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Main -->
               <div id="main">
                  <div class="inner">

                     <!-- Header -->
                        <%@ include file="../top.jsp" %>

                     <!-- Banner -->
                     <!-- 
                        <section id="banner">
                           <div class="content">
                              <header style="text-align: center;">
                                 <h1>공지사항 페이지다!</h1>
                                 <p>공지사항 리스트 만들어서 넣어야한다 날짜도 들어가야함</p>
                              </header>
                           </div>
                        </section>
                      -->
                        
                        <br>
                        <br>
					 <!-- 중간에 공지사항 탭 넣기 : 공지사항 템플릿 -->
							<div id="container" class="container sub_container">
						
								<div class="contents" id="contents">
									<!-- breadcrumbs End -->
									<div class="cont-body">
										<div class="tab equal">
											<ul class="nav">
												<li class="active" title="선택된 탭"><a href="notice"> 공지사항 </a></li>
												<li><a href="QnA"> 질의응답(QnA) </a></li>
												<!-- <li class="active" title="선택된 탭"><a href="QnA"> 질의응답(QnA) </a></li>  -->
												<li><a href="FAQ"> 자주 물어보는 질문(FAQ) </a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>


				<!-- list형식으로 출력하기 -->
				<div class="table-wrapper">
					<table>
						<colgroup>
							<col width="10%" />
							<col width="*" />
							<col width="15%" />
							<col width="15%" />
							<col width="10%" />
						</colgroup>

						<thead>
							<tr>
								<th>NO.</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
								<th>Edit</th>
							</tr>
						</thead>

						<tbody>
							<!-- notice 공지사항 리스트 가져오기!! -->
							<c:forEach var="nlist" items="${nlist}">
								<tr>
									<td>${nlist.notino}</td>
									<td><a href="/notice/noticeView?notino=${nlist.notino}" class="lightgray">${nlist.notititle}</a></td>
									<td>${nlist.notiid}</td>
									<td><fmt:formatDate value="${nlist.notidate}"
											pattern="yyyy-MM-dd" /></td>
									<td>${nlist.notihit}</td>
									<td><a href="/notice/noticeModify?notino=${nlist.notino }"><button class="btn_simple btn_blue">수정</button></a> <!-- <button class="btn_simple btn_green">삭제</button>  -->
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>


									<!-- Section -->
									<section>
										<!-- Table -->
										<div class="table-wrapper">
											
											<div style="text-align: right;">
												<a href="/notice/noticeWrite"><button type="button" class="button primary">공지사항 작성</button></a>
											</div>
										</div>
									</section>
									<!-- // Section -->



					<!-- 하단 넘버링 버튼 -->
					<div class="col-12" style="margin: 0px auto;">
						<ul class="pagination">
							<!-- 첫 페이지 이동 -->
							<c:if test="${pageDto.page !=1}">
								<li><a href="/notice/notice?page=1" class="button"> <img
										src="../images/general/pageFirst.png" style="width: 15px;" />
								</a></li>
							</c:if>
							<c:if test="${pageDto.page ==1}">
								<li><span class="button disabled"> <img
										src="../images/general/pageFirst.png"
										style="width: 15px; vertical-align: middle;" />
								</span></li>
							</c:if>
							<!-- 첫 페이지 이동 끝-->
							<!-- 이전 페이지 이동 -->
							<c:if test="${pageDto.page>1}">
								<li><a href="/notice/notice?page=${pageDto.page-1}"
									class="button"> <img
										src="../images/general/pagePrevious.png"
										style="width: 15px; vertical-align: middle;" />
								</a></li>
							</c:if>
							<c:if test="${pageDto.page==1}">
								<li><span class="button disabled"> <img
										src="../images/general/pagePrevious.png"
										style="width: 15px; vertical-align: middle;" />
								</span></li>
							</c:if>
							<!-- 이전 페이지 이동 끝 -->
							<!-- 페이지 리스트 -->
							<c:forEach var="num" begin="${pageDto.startPage}"
								end="${pageDto.endPage}" step="1">
								<c:if test="${num != pageDto.page}">
									<li><a href="/notice/notice?page=${num}" class="page">${num}</a></li>
								</c:if>
								<c:if test="${num == pageDto.page}">
									<li><a href="/notice/notice?page=${num}"
										class="page active">${num}</a></li>
								</c:if>
							</c:forEach>
							<!-- 페이지 리스트 끝-->
							<!-- 다음 페이지 이동 -->
							<c:if test="${pageDto.page<pageDto.maxPage}">
								<li><a href="/notice/notice?page=${pageDto.page+1}"
									class="button"> <img src="../images/general/pageNext.png"
										style="width: 15px; vertical-align: middle;" />
								</a></li>
							</c:if>
							<c:if test="${pageDto.page==pageDto.maxPage}">
								<li><span class="button disabled"> <img
										src="../images/general/pageNext.png"
										style="width: 15px; vertical-align: middle;" />
								</span></li>
							</c:if>
							<!-- 다음 페이지 이동 끝-->
							<!-- 끝 페이지 이동 -->
							<c:if test="${pageDto.page != pageDto.maxPage}">
								<li><a href="/notice/notice?page=${pageDto.maxPage}"
									class="button"> <img src="../images/general/pageLast.png"
										style="width: 15px; vertical-align: middle;" />
								</a></li>
							</c:if>
							<c:if test="${pageDto.page == pageDto.maxPage}">
								<li><span class="button disabled"> <img
										src="../images/general/pageLast.png"
										style="width: 15px; vertical-align: middle;" />
								</span></li>
							</c:if>
							<!-- 끝 페이지 이동 끝-->
					</div>

				<!-- Footer -->
                  <%@ include file="../footer.jsp" %>


				</div>
			</div>

           

         </div>

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
								 <h2>Menu</h2>
							 </header>
							<ul>
							 <li>
							   <span class="opener">운동모임</span>
								 <ul>
									 <li><a href="adminStatic">운동모임 홈</a></li>
									 <li><a href="index">운동모임 게시판</a></li>
								 	 <li><a href="index">운동모임 작성</a></li>
								 </ul>
						     </li>
							 <li>
							   <span class="opener">체육시설</span>
								 <ul>
									 <li><a href="/sport/sportnotice">체육시설 게시판</a></li>
									 <li>체육시설 게시판으로 이동하게 코드 설정하기</li>
								 </ul>
							 </li>
							 <li>
							   <span class="opener">내 페이지</span>
								 <ul>
									<li><a href="index">내 프로필</a></li>
									<li><a href="index">내 운동모임</a></li>
									<li><a href="index">내 체육시설</a></li>
								</ul>
							 </li>
								<li>
								<span class="opener">고객센터</span>
									<ul>
										<li><a href="/notice">공지사항</a></li>
										<li><a href="/FAQ">FAQ</a></li>
										<li><a href="/QnA">Q&A</a></li>
									</ul>
								</li>
								<li>
								  <a href="/adminStatic">통계</a></li>
								<!-- opener 옵션 1,2,3 -->
								<li>
								<span class="opener">회원관리</span>
									<ul>
										<li><a href="/total_user">전체 회원 리스트</a></li>
									</ul>
							    </li>
								<li>
								<span class="opener">게시글 관리</span>
									<ul>
										<li><a href="/total_write">전체 게시글 리스트</a></li>
										<li>가능하면 게시글 / 후기 두개로 탭 나눠서 해보기</li>
									</ul>
								</li>
							</ul>
						</nav>



                  </div>
               </div>
	

	
	
		<!-- Scripts -->
         <script src="../js/jquery.min.js"></script>
         <script src="../js/browser.min.js"></script>
         <script src="../js/breakpoints.min.js"></script>
         <script src="../js/util.js"></script>
         <script src="../js/main.js"></script>

   </body>
</html>