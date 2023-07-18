<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
   <head>
      <title>admin page</title>
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
                     <!-- 
                        <section id="banner">
                           <div class="content">
                              <header style="text-align: center;">
                                 <h1>일대일 질의응답 해줄꺼다!!</h1>
                                 <p> 그냥 적당히 FAQ 보고 해결했으면,,,</p>
                              </header>
                           </div>
                        </section>
                      -->

					 <!-- 중간에 공지사항 탭 넣기 : 공지사항 템플릿 -->
						<div id="container" class="container sub_container">
					
							<div class="contents" id="contents">
								<!-- breadcrumbs End -->
								<div class="cont-body">
									<div class="tab equal">
										<ul class="nav">
											<li><a href="notice"> 공지사항 </a></li>
											<li class="active" title="선택된 탭"><a href="QnA"> 질의응답(QnA) </a></li>
											<li><a href="FAQ"> 자주 물어보는 질문(FAQ) </a></li>
											<!-- <li class="active" title="선택된 탭"><a href="QnA"> 질의응답(QnA) </a></li>  -->
										</ul>
									</div>
								</div>
							</div>
						</div>
							

                    <!-- list형식으로 출력하기 -->
                           <div class="table-wrapper">
                              <table>
                                 <colgroup>
                                    <col width="10%"  />
                                    <col width="*" />
                                    <col width="*" />
                                    <col width="*"/>
                                    <col width="*"/>
                                 </colgroup>
                                 <thead>
                                    <tr>
                                       <th>NO.</th>
                                       <th>제목</th>
                                       <th>작성자</th>
                                       <th>작성일</th>
                                       <th>답변현황</th>
                                    </tr>
                                 </thead>
                                 
                                 
                                 <tbody>
                                    <c:forEach var="qnalist" items="${qnalist}">
                                    <tr>
                                       <td>${qnalist.qnano}</td>
                                       <!-- <td><a href="/sport/sportnoticeView?fcltyno=${faqlist.faqq}" class="lightgray">${faqlist.faqq} </a></td> -->
                                       <td>${qnalist.qnatitle}</td>
                                       <td>${qnalist.id}</td>
                                       <td>${qnalist.newdate}</td>
                                       <td>${qnalist.qnastatus}</td>
                                    </tr>
                                    </c:forEach>
                                 </tbody>
                                 
                                 
                              </table>
                              <!-- 페이지 넘기는 버튼 -->
                              <ul class="pagination" >
                                 <li><span class="button disabled">Prev</span></li>
                                 <li><a href="#" class="page active">1</a></li>
                                 <li><a href="#" class="page">2</a></li>
                                 <li><a href="#" class="page">3</a></li>
                                 <li><span>&hellip;</span></li>
                                 <li><a href="#" class="page">7</a></li>
                                 <li><a href="#" class="page">8</a></li>
                                 <li><a href="#" class="page">9</a></li>
                                 <li><a href="#" class="button">Next</a></li>
                              </ul>
                              <h4>페이지 넘기는 버튼</h4>
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

   </body>
</html>