<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
   <head>
      <title>전체 회원 목록</title>
      <!-- 제이쿼리 최신 -->
      <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="../css/main_new_yang.css" />
      
	  <link rel="icon" href="../images/main/logo2.png">
	  
   </head>
   <body class="is-preload">
      <c:if test="${result=='i_success'}"><script>alert("회원이 등록되었습니다.!!");</script></c:if>

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Main -->
               <div id="main">
                  <div class="inner">

                     <!-- Header -->
					 <%@ include file="../top.jsp" %>
					 
					 <!-- 회원관리 리스트 나오게! -->
						 <div class="Wrap">
					        <!--content-->
					        <div class="content_St">
					        	<div class="content_Area">
					        		<!--card 이거다!!!!!!!!!!!!!!!!!!!-->
					        		<div class="card card_border">
					        		
					        			<!--card 맨 위 이름-->
					        			<div class="card_title bottomline">
					                        <h3>전체 회원 관리
					                    	</h3>
					                    </div>
					        			<!--card_title-->
					        			
					        			
					        			
					        			<!-- 검색 클릭시 -->
											<script>
										    	function userSearchBtn(){
										    		
										    		if($("#serch_input").val().length<2){
										    			alert("2글자 이상 입력하셔야 합니다.")
										    			$("#serch_input").focus();
										    			return false;
										    		}
										    		
										    		userSearch.submit();
										    	}
										    </script>
					        			
					        			<!--card-->
					        			<div class="card card_border bg_lightblue">
					                        <div class="card_option ">
					                            
						                        <!-- 2차 구현에서 하자....
						                        <div class="option_section" style="width:30%;">
					                                <span class="first_tit" style="float:left;text-align : center" ><br>가입 날짜 :</span>
					                                <input type="text" class="Datepicker cald_St hasDatepicker" id="dp1689135199476" style="width:100px; float:left;">
					                                <span style="float:left;"><br> ~ </span>
					                                <input type="text" class="Datepicker cald_St hasDatepicker" id="dp1689135199477" style="width:100px; float:left;">
						                        </div>
						                        <div class="option_section">
					                                <span style="float:left;"><br>현재 상태 :</span>
					                                <select style="width:100px; float:left;">
					                                    <option>가입</option>
					                                    <option>탈퇴</option>
					                                </select>
						                        </div> -->
						                        
						                        <div class="option_section" style="width:100%;">
					                            	<span style="float:left;"><br>회원 이름 검색 :</span>
					                            	<!-- 이 부분이 원래 벝은
					                            	<input type="text" style="width:120px; float:left;">
					                                <button class="btn_small btn_blue" style="float:left;">검색</button> -->
					                                <!-- 검색부분!! -->
					                            <form class='userSearchBtn' method="post" action="/admin/totalUser" name="userSearch" style="display:flex; align-items:center; place-content: center; ">    
													<input tye="search" style="width:400px; margin: 0 0 0 1px;" name="serch_input" id="serch_input" value="${serch_input}" placeholder="검색어를 입력해주세요." />
													<button type="button" class="btn_small btn_blue" onclick="userSearchBtn()" style="height: 40px; margin: 0 0 0 1px;">검색</button>
												</form>
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
						                                        <th>아이디</th>
						                                        <th>패스워드</th>
						                                        <th>이름</th>
						                                        <th>닉네임</th>
						                                        <th>이메일</th>
						                                        <th>회원가입일자</th>
						                                        <th>회원온도</th>
						                                        <th>탈퇴여부</th>
						                                        <th>Edit</th>
						                                    <!-- </tr> -->
						                                </thead>
						                                
						                                <tbody>
						                                <!-- userList 가져오기!! -->
						                                <c:forEach var="userList" items="${list}">
						                                   <tr>
															  <td>${userList.id}</td>
															  <td>${userList.pw}</td>
															  <td><a href="/admin/totalUserModify?id=${userList.id}" class="lightgray">${userList.usernm}</a></td>
															  <td>${userList.nicknm}</td>
															  <td>${userList.email}</td>
															  <td><fmt:formatDate value="${userList.joindate}" pattern="yyyy-MM-dd"/></td>
															  <td>${userList.totaltemp}</td>
															  <td>${userList.nowjoin}</td>
						                                      <td><a href="/admin/totalUserModify?id=${userList.id}"><button class="btn_simple btn_blue">수정</button></a>
						                                         <!--  <a onclick="deleteBtn()"><button class="btn_simple btn_green">삭제</button></a> -->
						                                      </td>
														    </tr>
						                                </c:forEach>
						                                      <!-- <td>1</td>
						                                        <td><div class="id_photo"><img src="./Admin Template - Light_files/icon_loginID.png"></div></td>
						                                        <td>Data Name</td>
						                                        <td>222</td>
						                                        <td>v0.0.1</td>
						                                        <td>20,840,512</td>
						                                        <td>OFF</td>
						                                        <td>OFF</td>
						                                        <td>AA</td>
						                                        <td><button class="btn_simple btn_blue">확인</button><button class="btn_simple btn_green">수정</button></td> -->
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
													    <a href="/admin/totalUser?page=1" class="button">
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
													    <a href="/admin/totalUser?page=${pageDto.page-1}" class="button">
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
													    <li><a href="/admin/totalUser?page=${num}" class="page">${num}</a></li>
													  </c:if>
													  <c:if test="${num == pageDto.page}" >
													    <li><a href="/admin/totalUser?page=${num}" class="page active">${num}</a></li>
													  </c:if>
													</c:forEach>
													<!-- 페이지 리스트 끝-->
													<!-- 다음 페이지 이동 -->
													<c:if test="${pageDto.page<pageDto.maxPage}">
													  <li>
													    <a href="/admin/totalUser?page=${pageDto.page+1}" class="button">
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
													    <a href="/admin/totalUser?page=${pageDto.maxPage}" class="button">
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
									
									
									
									<!-- Section -->
									<section>
										<!-- Table -->
										<div class="table-wrapper">
											
											<div style="text-align: right;">
												<a href="/admin/totalUserWrite"><button type="button" class="button primary">문의글 작성</button></a>
											</div>
										</div>
									</section>
									<!-- // Section -->
						        			
						        			
					        			
						        			
						        			
						        			
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
											
											
											<!-- 게시글 페이지 넘기기 Start -->
												<!-- 하단 넘버링 버튼 끝 -->
											<!-- 게시글 페이지 넘기기 End -->
											
											
											
											
											
										</div>
					        			<!--card-->
					        		</div>
					        		<!--card-->
					        	</div>
					        </div>
					        <!--//content-->
						</div>
										 
					 
                    <%@ include file="../footer.jsp" %> 
					 
					 
                  </div>
               </div>
               
               
               <!-- Sidebar Start -->
					<%@ include file="../sidebar.jsp" %>
		       <!-- Sidebar End -->
               
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