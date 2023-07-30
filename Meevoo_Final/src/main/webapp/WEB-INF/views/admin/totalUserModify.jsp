<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
   <head>
      <title>회원수정하기</title>
      <!-- 제이쿼리 최신 -->
      <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="../css/main_yang.css" />
      <script>
     function updateBtn(){
    	if(confirm("회원정보를 수정하시겠습니까?")){
	    	 update.submit(); //전송
    	}
     }
  </script>
  <script>
      function deleteBtn(){
    	  if(confirm("게시글을 삭제하시겠습니까?")){
    		  update.submit(); //전송
    		  //location.href="/admin/totalUserModify?id=${userList.id}";
    	  }
      }
  </script>
   </head>
   <body class="is-preload">

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Main -->
               <div id="main">
                  <div class="inner">

                     <!-- Header -->
                        <%@ include file="../top.jsp" %>


					 <!-- 회원관리 리스트 나오게! Start -->
						 <div class="Wrap">
					        <!--content-->
					        <div class="content_St">
					        	<div class="content_Area">
					        		<!--card 이거다!!!!!!!!!!!!!!!!!!!-->
					        		<div class="card card_border">
					        		
					        			<!--card 맨 위 이름-->
					        			<div class="card_title bottomline">
					                        <h3>회원정보 수정하기
					                    	</h3>
					                    </div>
					        			<!--card_title-->
					        			
					        			
					        			
					        			
									  <div class="container body">
									    <div class="main_container">
									      <div class="right_col" role="main" style="min-height: 100%;">
									        <div class="">
									          <div class="clearfix"></div>
									          <div class="row">
									            <div class="col-md-12 col-sm-12">
									              <div class="x_panel">

									                <div class="x_content">
									                  <form class="" action="/admin/totalUserModify" method="post" name="update" enctype="multipart/form-data"
									                    novalidate="">
									                    
									                    <!-- <span class="section">Personal Info</span> -->
									                    <!-- <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">no<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" placeholder="1" name="occupation" data-validate-length-range="5,15" type="text">
									                      </div>
									                    </div> -->
									                    
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">이름<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" name="usernm" value="${mdto.usernm}" data-validate-length-range="5,15" type="text" >
									                      </div>
									                    </div>
									                    
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">닉네임<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="text" value="${mdto.nicknm }" name="nicknm" data-validate-linked="email">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">ID<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" value="${mdto.id}" name="id" data-validate-length-range="5,15" type="id" readonly>
									                        
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">PW<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" value="${mdto.pw }" name="pw"  type="password" readonly>  <!-- required="required" -->
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">EMAIL<span
									                          class="required"> </span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" value="${mdto.email }" name="email" required="required" type="email">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">성별<span
									                          class="required"> </span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" value="${mdto.gender }" type="text" name="gender" >
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">주소<span
									                          class="required"> </span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" value="${mdto.addr}" type="text" name="addr" >
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">관심지역<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="text" value="${mdto.dongcate }" name="dongcate"  >
									                        <select name="dongcate" defaultValue="${mdto.dongcate }">
																	<option value="구로동">구로동</option>
																	<option value="개봉동">개봉동</option>
																	<option value="고척동">고척동</option>
																	<option value="신도림동">신도림동</option>
																	<option value="항동">항동</option>
																	<option value="오류동">오류동</option>
																	<option value="가리봉동">가리봉동</option>
																	<option value="궁동">궁동</option>
															</select>
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">관심스포츠<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="text" value="${mdto.scate }" name="scate">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">태어난 연도<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="number" value="${mdto.birth }" name="birth">
									                      </div>
									                    </div>
									                    
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">프로필 사진<span
									                          class="required"> </span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input type="file" class="form-control" value="${mdto.userimg}" name="file">
									                        <input type="text" class="form-control" value="${mdto.userimg}" name="userimg">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">가입날짜<span
									                          class="required"> </span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <span name="joindate"><fmt:formatDate value="${mdto.joindate}" pattern="yyyy-MM-dd" /></span>
									                        <!-- <input type="number" class="form-control"  name="joindate" readonly> -->
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">자기소개<span
									                          class="required"> </span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <textarea  name="selfintro">${mdto.selfintro }</textarea>
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">가입 상태(가입/탈퇴)<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <!-- <input class="form-control" type="number" value="${mdto.nowjoin}" name="nowjoin" > -->
									                        			
									                        			
									                       
									                       <select name="joinchange">
																<c:if test="${mdto.nowjoin == '1'}">
																	<option value="1" selected>가입되어있는 회원</option>
																	<option value="0">탈퇴한 회원</option>
																</c:if>
																<c:if test="${mdto.nowjoin == '0'}">
																	<option value="1">가입되어있는 회원</option>
																	<option value="0" selected>탈퇴한 회원</option>
																</c:if>
															</select> 
									                        
									                        
									                      
									                      </div>
									                      
									                    </div>
									                    
									                    <!-- <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">Time<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="time" name="time" required="required">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">Repeat password<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="password" name="password2" data-validate-linked="password"
									                          required="required">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">Telephone<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="tel" name="phone" required="required"
									                          data-validate-length-range="8,20">
									                      </div>
									                    </div>
									                   <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">관심온도<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="number" name="number" data-validate-minmax="10,100"
									                          required="required">
									                      </div>
									                    </div> -->
									                    <div class="ln_solid">
									                      <div class="form-group">
									                        <div class="col-md-6 offset-md-3">
									                          <button type="button" onclick="updateBtn()" class="btn btn-primary" style="margin: 0 auto;">Submit</button>
									                          <button type="reset" class="btn btn-success">Reset</button>
									                          <button type="button" onclick="deleteBtn()" class="btn btn-delete" style="margin: 0 auto;float: right;">탈퇴하기</button>
									                        </div>
									                      </div>
									                    </div>
									                  </form>
									                  
									                </div>
									              </div>
									            </div>
									          </div>
									        </div>
									      </div>
									    </div>
									  </div>
					        			
					        			
					        			
					        			
					        			
										
					        		</div>
					        		<!--card-->
					        	</div>
					        </div>
					        <!--//content-->
						</div>
						<!-- 회원관리 리스트 나오게! End -->			
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
         
         <!-- 회원수정 페이지 -->
           <script src="../Gentelella Alela! __files/jquery.min.js.다운로드"></script>
 		   <script src="../Gentelella Alela! __files/multifield.js.다운로드"></script>
     	   <script src="../Gentelella Alela! __files/validator.js.다운로드"></script>
     	   <script src="../Gentelella Alela! __files/jquery.min.js(1).다운로드"></script>
 		   <script src="../Gentelella Alela! __files/bootstrap.bundle.min.js.다운로드"></script>
  		   <script src="../Gentelella Alela! __files/fastclick.js.다운로드"></script>
  		   <script src="../Gentelella Alela! __files/nprogress.js.다운로드"></script>

  		   <script src="../Gentelella Alela! __files/custom.min.js.다운로드"></script>
  		   <script defer="" src="../Gentelella Alela! __files/v2cb3a2ab87c5498db5ce7e6608cf55231689030342039"
            integrity="sha512-DI3rPuZDcpH/mSGyN22erN5QFnhl760f50/te7FTIYxodEF8jJnSFnfnmG/c+osmIQemvUrnBtxnMpNdzvx1/g=="
            data-cf-beacon="{&quot;rayId&quot;:&quot;7e682d96cce7afc9&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2023.4.0&quot;,&quot;si&quot;:100}"
            crossorigin="anonymous"></script>

   </body>
</html>