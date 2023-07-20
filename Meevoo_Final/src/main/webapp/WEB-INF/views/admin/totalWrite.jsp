<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
   <head>
      <title>FAQ</title>
      <!-- 제이쿼리 최신 -->
      <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="../css/main_yang.css" />
   </head>
   <body class="is-preload">

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Main -->
               <div id="main">
                  <div class="inner">

                     <!-- Header -->
                        <header id="header">
                           <a href="/index" class="logo"><strong>Meevoo</strong> by 채연</a>
                           <ul class="icons">
                              <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                              <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                              <li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
                              <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                              <li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
                           </ul>
                        </header>

                     <!-- Banner -->
                        <!-- <section id="banner">
                           <div class="content">
                              <header style="text-align: center;">
                                 <h1>전체 게시글 목록을 볼 수 있을것이다!</h1>
                                 <p> 수정이랑 삭제가 가능하지!!!</p>
                              </header>
                           </div>
                        </section> -->
					 
					 
					 <!-- 회원관리 리스트 나오게! -->
						 <div class="Wrap">
					        <!--content-->
					        <div class="content_St">
					        	<div class="content_Area">
					        		<!--card 이거다!!!!!!!!!!!!!!!!!!!-->
					        		<div class="card card_border">
					        		
					        			<!--card 맨 위 이름-->
					        			<div class="card_title bottomline">
					                        <h3>전체 게시글 관리
					                        	<span class="subtitle">종류별 검색과 수정, 삭제가 가능해요!!</span>
					                    	</h3>
					                    </div>
					        			<!--card_title-->
					        			
					        			<!--card-->
					        			<div class="card card_border bg_lightblue">
					                        <div class="card_option ">
						                        <!-- <div class="option_section">
					                                <span>Group : </span>
					                                <div class="Button_group">
							        					<ul>
							        						<li class="tab-link current">Group1</li>
							        						<li class="tab-link">Group2</li>
							        						<li class="tab-link">Group3</li>
							        					</ul>
							        				</div>
						                        </div> -->
						                        <div class="option_section" style="width:300px;">
					                                <span class="first_tit" style="float:left;text-align : center" ><br>가입 날짜 :</span>
					                                <input type="text" class="Datepicker cald_St hasDatepicker" id="dp1689135199476" style="width:100px; float:left;">
					                                <span style="float:left;"> ~ </span>
					                                <input type="text" class="Datepicker cald_St hasDatepicker" id="dp1689135199477" style="width:100px; float:left;">
						                        </div>
						                        <div class="option_section">
					                                <span style="float:left;"><br>현재 상태 :</span>
					                                <select style="width:100px; float:left; hight : 45px;">
					                                    <option>가입</option>
					                                    <option>탈퇴</option>
					                                </select>
						                        </div>
						                        <div class="option_section">
					                            	<span style="float:left;"><br>회원 이름 검색 :</span>
					                            	<input type="text" style="width:120px; float:left;">
					                                <button class="btn_small btn_blue" style="float:left;">검색</button>
						                        </div>
					                        </div>
					        			</div>
										<!--card-->
										
										<!--회원 리스트-->
										<div class="card card_border">
											<!--card_title-->
						        			<!-- <div class="card_title"> -->
						                        <!-- <div class="rightArea"> -->
						                        	<!-- <button class="btn_small btn_red">Option</button> -->
						                        	<!-- <div class="dropBtn"> -->
								        				<!-- <button class="btn_small btn_blue">Button Name<span><i class="demo-icon icon-down-open"></i></span></button> -->
							        					<div class="drop_list" style="display: none;">
							        						<ul>
							        							<li><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#">dropButton name1</a></li>
							        							<li><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#">dropButton name2</a></li>
							        							<li><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#">dropButton name3</a></li>
							        						</ul>
							        					</div>
							        				<!-- </div> -->
						                        <!-- </div> -->
						                    <!-- </div> -->
						        			<!--card_title-->
						        			<div class="card paddingnone">
						        				<!--table-->
												<div class="tableStyle_A">
					                                <table>
						                                <colgroup>
						                                    <col width="*%">
						                                    <col width="*%">
						                                    <col width="*%">
						                                    <col width="*%">
						                                    <col width="*%">
						                                    <col width="*%">
						                                    <col width="*%">
						                                    <col width="*%">
						                                    <col width="*%">
						                                    <col width="*%">
						                                </colgroup>
						                                <thead>
						                                    <!-- <tr> -->
						                                        <th>번호</th>
						                                        <th>작성자</th>
						                                        <th>모임 이름</th>
						                                        <th>작성일자</th>
						                                        <th>모임일자</th>
						                                        <th>모임장소</th>
						                                        <th>모임시설</th>
						                                        <th>Edit</th>
						                                    <!-- </tr> -->
						                                </thead>
						                                
						                                <tbody>
						                                <!-- userList 가져오기!! -->
						                               <c:forEach var="clublist" items="${clublist}">
						                                   <tr>
															  <td>${clublist.cno}</td>
															  <td>${clublist.id}</td>
															  <td><a href="/" class="lightgray">${clublist.cnm}</a></td>
															  <td><fmt:formatDate value="${clublist.cwrdate}" pattern="yyyy-MM-dd"/></td>
															  <td><fmt:formatDate value="${clublist.cdodate}" pattern="yyyy-MM-dd"/></td>
															  <td>${clublist.cloc}</td>
															  <td>${clublist.sfno}</td>
						                                      <td><a href="/admin/totalWriteModify?id=${clublist.id }"><button class="btn_simple btn_blue">수정</button></a><button class="btn_simple btn_green">삭제</button></td>
														    </tr>
						                                </c:forEach>
						                                
						                                      
						                                </tbody>
						                            </table>
												</div>
												<!--table-->
						        			</div>
						        			
						        			
						        			
						        			
						        			
						        			<!-- 하단 넘버링 버튼 -->
											<div class="col-12" style="margin: 0px auto;">
												<ul class="pagination">
												    <!-- 첫 페이지 이동 -->
												    <c:if test="${pageDto.page !=1}">
													  <li>
													    <a href="/admin/totalWrite?page=1" class="button">
													      <img src="../images/general/pageFirst.png" style="width:15px; " />
													    </a>
													  </li>
												    </c:if>
												    <c:if test="${pageDto.page ==1}">
													  <li>
													    <span class="button disabled">
													      <img src="../images/general/pageFirst.png" style="width:15px; vertical-align: middle;" />
													    </span>
													  </li>
												    </c:if>
													<!-- 첫 페이지 이동 끝-->
													<!-- 이전 페이지 이동 -->
													<c:if test="${pageDto.page>1}">
													  <li>
													    <a href="/admin/totalWrite?page=${pageDto.page-1}" class="button">
													      <img src="../images/general/pagePrevious.png" style="width:15px; vertical-align: middle;" />
													    </a>
													  </li>
													</c:if>
													<c:if test="${pageDto.page==1}">
													  <li>
													    <span class="button disabled">
													      <img src="../images/general/pagePrevious.png" style="width:15px; vertical-align: middle;" />
													    </span>
													  </li>
													</c:if>
													<!-- 이전 페이지 이동 끝 -->
													<!-- 페이지 리스트 -->
													<c:forEach var="num" begin="${pageDto.startPage}" end="${pageDto.endPage}" step="1" >
													  <c:if test="${num != pageDto.page}" >
													    <li><a href="/admin/totalWrite?page=${num}" class="page">${num}</a></li>
													  </c:if>
													  <c:if test="${num == pageDto.page}" >
													    <li><a href="/admin/totalWrite?page=${num}" class="page active">${num}</a></li>
													  </c:if>
													</c:forEach>
													<!-- 페이지 리스트 끝-->
													<!-- 다음 페이지 이동 -->
													<c:if test="${pageDto.page<pageDto.maxPage}">
													  <li>
													    <a href="/admin/totalWrite?page=${pageDto.page+1}" class="button">
													      <img src="../images/general/pageNext.png" style="width:15px; vertical-align: middle;" />
													    </a>
													  </li>
													</c:if>
													<c:if test="${pageDto.page==pageDto.maxPage}">
													  <li>
													    <span class="button disabled">
													      <img src="../images/general/pageNext.png" style="width:15px; vertical-align: middle;" />
													    </span>
													  </li>
													</c:if>
													<!-- 다음 페이지 이동 끝-->
													<!-- 끝 페이지 이동 -->
												    <c:if test="${pageDto.page != pageDto.maxPage}">
													  <li>
													    <a href="/admin/totalWrite?page=${pageDto.maxPage}" class="button">
													      <img src="../images/general/pageLast.png" style="width:15px; vertical-align: middle;" />
													    </a>
													  </li>
												    </c:if>
												    <c:if test="${pageDto.page == pageDto.maxPage}">
													  <li>
													    <span class="button disabled">
													      <img src="../images/general/pageLast.png" style="width:15px; vertical-align: middle;" />
													    </span>
													  </li>
												    </c:if>
													<!-- 끝 페이지 이동 끝-->
													
											</ul>
										</div>
						        			
						        			
						        			
						        			
						        			
											<!--paging-->
						        			<!--
											<div class="paging">
						                        <div class="ps_area">
						                            <span class="imgb"><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#"><i class="demo-icon icon-first" title="First"></i></a></span>
						                            <span class="imgb"><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#"><i class="demo-icon icon-left-open" title="First"></i></a></span>
						                            <span class="on"><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#">1</a></span>
						                            <span><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#">2</a></span>
						                            <span><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#">3</a></span>
						                            <span><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#">4</a></span>
						                            <span class="imgb"><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#"><i class="demo-icon icon-right-open" title="First"></i></a></span>
						                            <span class="imgb"><a href="http://diveinterface.com/preview/at/AdminTemplate_Light/html/dashboard/sales.html#"><i class="demo-icon icon-end" title="First"></i></a></span>
						                        </div>
						                    </div>
						        			 -->
											<!--paging-->
											
											
											
											
											
										</div>
					        			<!--card-->
					        		</div>
					        		<!--card-->
					        	</div>
					        </div>
					        <!--//content-->
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
                              <li><a href="/admin_static">통계</a></li>
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
                              <li>
                                 <span class="opener">마이페이지</span>
                                 <ul>
                                    <li><a href="/index">내 프로필</a></li>
                                    <li><a href="/index">내 운동모임</a></li>
                                    <li><a href="/index">내 체육시설</a></li>
                                 </ul>
                              </li>
                              <li>
                                 <span class="opener">고객센터</span>
                                 <ul>
                                    <li><a href="/index">공지사항</a></li>
                                    <li><a href="/index">FAQ / Q&A</a></li>
                                 </ul>
                              </li>
                           </ul>
                        </nav>


                     <!-- Footer -->
                        <footer id="footer">
                           <p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
                        </footer>

                  </div>
               </div>

         </div>
         <!-- Scripts -->
         <script src="../js/jquery.min.js"></script>
         <script src="../js/browser.min.js"></script>
         <script src="../js/breakpoints.min.js"></script>
         <script src="../js/util.js"></script>
         <script src="../js/main.js"></script>
         <script type="text/javascript" src="./Admin Template - Light_files/dataTables.checkboxes.min.js.다운로드"></script>

   </body>
</html>