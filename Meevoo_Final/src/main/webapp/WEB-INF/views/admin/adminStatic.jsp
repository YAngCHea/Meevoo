<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Meevoo 관리자 페이지</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min_yang.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style_yang.css" rel="stylesheet">


</head>

<body class="is-preload">
    
    

    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Sidebar Start -->
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
										<li><a href="/notice/notice">공지사항</a></li>
										<li><a href="/notice/FAQ">FAQ</a></li>
										<li><a href="/notice/QnA">Q&A</a></li>
									</ul>
								</li>
								<li>
								  <a href="/admin/adminStatic">관리자 메인페이지</a></li>
								<!-- opener 옵션 1,2,3 -->
								<li>
								<span class="opener">회원관리</span>
									<ul>
										<li><a href="/admin/totalUser">전체 회원 리스트</a></li>
									</ul>
							    </li>
								<li>
								<span class="opener">게시글 관리</span>
									<ul>
										<li><a href="/admin/totalWrite">전체 게시글 리스트</a></li>
										<li>가능하면 게시글 / 후기 두개로 탭 나눠서 해보기</li>
									</ul>
								</li>
							</ul>
						</nav>
					<!-- Menu End-->
                        
                  </div>
               </div>
        <!-- Sidebar End -->
        
        
        <!-- Content Start -->
        <div class="content">
        
	        <!-- header Start -->
				<div id="wrapper">
					<!-- Main Start -->
						<div id="main">
							<div class="inner">
							
							
								<!-- Header Start -->
									<header id="header">
										<a href="/main" class="logo"><strong>Meevoo</strong> by 채연</a>
										<ul class="icons">
											<li><a class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
											<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
											<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
											<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
											<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
										</ul>
									</header>
								<!-- Header End -->
								
								<!-- 맨위에 네개 Start -->
						            <div class="container-fluid pt-4 px-4">
						                <div class="row g-4">
						                    <div class="col-sm-6 col-xl-3">
						                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
						                            <i class="fa fa-chart-line fa-3x text-primary"></i>
						                            <div class="ms-3">
						                                <p class="mb-2">접속자</p>
						                                <c:forEach var="shtlist" items="${shtlist}">
						                                <h6 class="mb-0">${shtlist.totallogin}</h6>
					                                	</c:forEach>
						                            </div>
						                        </div>
						                    </div>
						                    <div class="col-sm-6 col-xl-3">
						                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
						                            <i class="fa fa-chart-bar fa-3x text-primary"></i>
						                            <div class="ms-3">
						                                <p class="mb-2">신규가입자</p>
						                                <c:forEach var="sholist" items="${sholist}">
						                                <h6 class="mb-0">${sholist.newjoinuser}</h6>
					                                	</c:forEach>
						                            </div>
						                        </div>
						                    </div>
						                    <div class="col-sm-6 col-xl-3">
						                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
						                            <i class="fa fa-chart-area fa-3x text-primary"></i>
						                            <div class="ms-3">
						                                <p class="mb-2">최근게시물</p>
						                              <c:forEach var="sholist" items="${sholist}">
						                                <h6 class="mb-0">${sholist.newclub}</h6>
					                                	</c:forEach>
						                            </div>
						                        </div>
						                    </div>
						                    <div class="col-sm-6 col-xl-3">
						                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
						                            <i class="fa fa-chart-pie fa-3x text-primary"></i>
						                            <div class="ms-3">
						                                <p class="mb-2">최근댓글</p>
						                              <c:forEach var="sholist" items="${sholist}">
						                                <h6 class="mb-0">${sholist.newreview}</h6>
					                                	</c:forEach>
						                            </div>
						                        </div>
						                    </div>
						                </div>
						            </div>
						            <!-- 맨위에 네개 End -->
						
						
						            <!-- 그래프 Start -->
						            <div class="container-fluid pt-4 px-4">
						                <div class="row g-4">
						                    <div class="col-sm-12 col-xl-6">
						                    
						                    
						                        <div class="bg-light text-center rounded p-4">
						                            <div class="d-flex align-items-center justify-content-between mb-4">
						                                <h4 class="mb-0">총 회원수 / 신규회원 / 탈퇴회원</h6>
						                                <a href="/admin/totalUser">전체보기</a>
						                            </div>
						                            <canvas id="worldwide-sales"></canvas>
						                        </div>
						                    </div>
						                    <div class="col-sm-12 col-xl-6">
						                        <div class="bg-light text-center rounded p-4">
						                            <div class="d-flex align-items-center justify-content-between mb-4">
						                                <h4 class="mb-0">모임게시글수 / 시설후기 게시글수</h6>
						                                <a href="/admin/totalWrite">전체보기</a>
						                            </div>
						                            <canvas id="salse-revenue"></canvas>
						                        </div>
						                    </div>
						                     						                    
						                    
						                </div>
						            </div>
						            <!-- 그래프 End -->
						
						            <!-- 위젯 Start -->
						            <div class="container-fluid pt-4 px-4">
						                <div class="row g-4">
						                 
						                    <!-- 신고게시물 Start -->
								             <div class="col-sm-12 col-md-6 col-xl-4">
						                        <div class="h-100 bg-light rounded p-4">
						                            <div class="d-flex align-items-center justify-content-between mb-4">
						                                <h4 class="mb-0">시설 신고 게시물</h6>
						                                <a href="">전체 보기</a>
						                            </div>
						                            
				                            <!-- 시설 신고 상위 5개 -->
				                            <c:forEach var="sRelist" items="${sRelist}">
				                                   <div class="d-flex align-items-center border-bottom py-2">
						                                <input class="form-check-input m-0" type="checkbox">
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span>${sRelist.sfno}</span>
						                                        <span><a href="#">${sRelist.srepcontent}</a></span>
						                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
				                                </c:forEach>
						                            
						                            <!-- 
						                            <div class="d-flex align-items-center border-bottom py-2">
						                                <input class="form-check-input m-0" type="checkbox">
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span>새벽</span>
						                                        <span>새벽두시에 인라인타실분</span>
						                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="d-flex align-items-center border-bottom py-2">
						                                <input class="form-check-input m-0" type="checkbox">
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span>당일치기 제주도 풋살팟</span>
						                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="d-flex align-items-center border-bottom py-2">
						                                <input class="form-check-input m-0" type="checkbox" checked>
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span><del>20대 여자회원분 구해여(삭제하면 이렇게 나옴)</del></span>
						                                        <button class="btn btn-sm text-primary"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="d-flex align-items-center border-bottom py-2">
						                                <input class="form-check-input m-0" type="checkbox">
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span>나보다 잘치는놈 없다! 야구가자!</span>
						                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="d-flex align-items-center pt-2">
						                                <input class="form-check-input m-0" type="checkbox">
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span>저희 애기랑 피구하실분,,</span>
						                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
						                            -->
						                            
						                        </div>
						                    </div>
								            <!-- 신고게시물 end -->
								            
								            <!-- 최근게시물 Start -->
								             <div class="col-sm-12 col-md-6 col-xl-4">
						                        <div class="h-100 bg-light rounded p-4">
						                            <div class="d-flex align-items-center justify-content-between mb-4">
						                                <h4 class="mb-0">모임 신고 게시물</h6>
						                                <a href="">전체 보기</a>
						                            </div>
						                            
						                            <!-- 시설 신고 상위 5개 -->
						                            <c:forEach var="cRelist" items="${cRelist}">
						                                   <div class="d-flex align-items-center border-bottom py-2">
								                                <input class="form-check-input m-0" type="checkbox">
								                                <div class="w-100 ms-3">
								                                    <div class="d-flex w-100 align-items-center justify-content-between">
								                                        <span>${cRelist.cno}</span>
								                                        <span><a href="#">${cRelist.crepcontent}</a></span>
								                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
								                                    </div>
								                                </div>
								                            </div>
					                                </c:forEach>
						                            
						                            <!-- 
						                            <div class="d-flex align-items-center border-bottom py-2">
						                                <input class="form-check-input m-0" type="checkbox">
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span>어제 다녀왔는데 시설 너무 좋네요!</span>
						                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="d-flex align-items-center border-bottom py-2">
						                                <input class="form-check-input m-0" type="checkbox">
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span>인라인 스케이트장 왕 추천!</span>
						                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="d-flex align-items-center border-bottom py-2">
						                                <input class="form-check-input m-0" type="checkbox" checked>
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span><del>시설 너무 구려요,,(삭제하면 이렇게 나옴)</del></span>
						                                        <button class="btn btn-sm text-primary"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="d-flex align-items-center border-bottom py-2">
						                                <input class="form-check-input m-0" type="checkbox">
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span>구로구 클라이밍 맛집인정!</span>
						                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="d-flex align-items-center pt-2">
						                                <input class="form-check-input m-0" type="checkbox">
						                                <div class="w-100 ms-3">
						                                    <div class="d-flex w-100 align-items-center justify-content-between">
						                                        <span>가본데중 제일 별로</span>
						                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
						                                    </div>
						                                </div>
						                            </div>
						                             -->
						                            
						                            
						                        </div>
						                    </div>
								            <!-- 최근게시물 end -->
								            
								            <!-- 도넛 차트 만들기 start-->
						                    <div class="col-sm-12 col-md-6 col-xl-4">
						                        <div class="h-100 bg-light rounded p-4">
						                            <!-- <div class="d-flex align-items-center justify-content-between mb-4"> -->
														<!-- <h6 class="mb-0">운동 종목별 %</h6>
						                                <a href="">Show All</a> -->
						                            <!-- </div> -->
						                            
														<!-- 탭메뉴 넣기 Start -->
														
														<div class="tab">
														    <!-- 탭 이름 넣기 START -->
														    <ul class="tabnav">
														      <li><a href="#tab01">모임 게시글</a></li>  
														      <li><a href="#tab02">시설 리뷰</a></li>
														    </ul>
														    <!-- 탭 이름 넣기 END -->
														    
														    <!-- 탭 컨텐츠 넣기 START -->
														    <div class="tabcontent">
														      <div id="tab01"> 
														      
														         <!-- 그래프 넣기 : 모임 게시글 START -->
																 <div class="col-sm-12 col-xl-6">
											                        <div class="bg-light rounded h-100 p-4">
											                            <!-- <h6 class="mb-4">Doughnut Chart</h6> -->
											                            <canvas id="doughnut-chart"></canvas>
											                        </div>
											                     </div>
														         <!-- 그래프 넣기 : 모임 게시글 END -->
														      
														      </div>
														      <div id="tab02">

																 <!-- 그래프 넣기 : 시설 리뷰 START -->
																 <div class="col-sm-12 col-xl-6">
											                        <div class="bg-light rounded h-100 p-4">
											                            <!-- <h6 class="mb-4">Doughnut Chart</h6> -->
											                            <canvas id="doughnut-chart"></canvas>
											                        </div>
											                     </div>
														         <!-- 그래프 넣기 : 시설 리뷰 END -->

															  </div>
														    </div>
														    <!-- 탭 컨텐츠 넣기 END -->
														    
														  </div>
														
														
														
														
														
														<!-- 탭메뉴 넣기 End -->
														
													
													
												</div>
						                    </div>
						                    
						                    <!-- 도넛 차트 만들기 end -->
						                    
						                </div>
						            </div>
						            <!-- 위젯 End -->
								
									<!-- Footer Start -->
							            <div class="container-fluid pt-4 px-4">
							                <div class="bg-light rounded-top p-4">
							                    <div class="row">
							                        <div class="col-12 col-sm-6 text-center text-sm-start">
							                            &copy; <a href="#">Your Site Name</a>, All Right Reserved. 
							                        </div>
							                        <div class="col-12 col-sm-6 text-center text-sm-end">
							                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							                            Designed By <a href="https://htmlcodex.com">HTML Codex</a>
							                        </br>
							                        Distributed By <a class="border-bottom" href="https://themewagon.com" target="_blank">ThemeWagon</a>
							                        </div>
							                    </div>
							                </div>
							            </div>
							        <!-- Footer End -->
								
								
							</div>
						</div>
					<!-- Main End -->
				</div>
		    <!-- header end -->
        </div>
        <!-- Content End -->
            




        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../lib/chart/chart.min.js"></script>
    <script src="../lib/easing/easing.min.js"></script>
    <script src="../lib/waypoints/waypoints.min.js"></script>
    <script src="../lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="../lib/tempusdominus/js/moment.min.js"></script>
    <script src="../lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="../lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    
    <!-- 사이드바에서 메뉴열리게 -->
    <!-- Scripts -->
    <!-- 
			<script src="../js/jquery.min.js"></script>
     -->
			<script src="../js/browser.min.js"></script>
			<script src="../js/breakpoints.min.js"></script>
			<script src="../js/util.js"></script>
			<script src="../js/main.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main_yang.js"></script>
</body>

</html>