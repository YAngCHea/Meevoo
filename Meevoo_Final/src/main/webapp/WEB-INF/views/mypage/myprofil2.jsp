<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--[if lt IE 9]> 
			<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script> 
		<![endif]-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, viewport-fit=cover">
		<meta property="og:image" content="common/images/share-image.png?v=1689213826">
		<meta name="description" content="함께 운동하실래요?">
		<meta property="og:type" content="website">
		<meta property="og:title" content="운동끼리">
		<meta property="og:description" content="함께 운동하실래요?">
		<link type="text/css" rel="stylesheet" href="../css/swiper.min.lee.css" />
		<link type="text/css" rel="stylesheet" href="../css/base.min.lee.css" />
		<link type="text/css" rel="stylesheet" href="../css/layout.min.lee.css" />
				<link type="text/css" rel="stylesheet" href="../css/filter.min.lee.css" />
        		<link type="text/css" rel="stylesheet" href="../css/myinfo.min.lee.css" />
        		<title>운동끼리</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script src="common/js/includeHTML.js?v=1689213826"></script>
        <script src="common/js/swiper.min.js?v=1689213826"></script>
        <script src="common/js/script.js?v=1689213826"></script>
	</head>
	
	<body><div id='loadingBackground'></div>
<div id='loading_img'><img src="common/images/loading.gif"></div>
		<div id="wrap">
        			<div class="container" style="padding-top: 0;padding-bottom: 0;" id="loading">
				<div class="loading">
					<img src="common/images/ico-load.svg">
				</div>
			</div>


    <script type='text/javascript'>
     $("#loadingBackground").show();
    $(window).load(function () {
         $("#loadingBackground").hide();
            $('#loading').hide();
        });
    </script>			<div class="container" style="padding-bottom: 0;">
				<div class="inner">
					<h2 class="title sub-title clear">
						<button class="close" onClick="javascript:goBack();">이전으로</button>
						<span>꼬맹</span>
					</h2>
					<div class="myinfo">
						<div class="modify">
							<form name='myinfo_form' id='myinfo_form' enctype='multipart/form-data' onsubmit="return saveModifyInfo()">
                            <input type='hidden' name='mode' value='save_modify_info'>
                            <input type='hidden' name='modify_idx' value='4926'>
                            <input type='hidden' name='old_picture' value=''>
								<div class="profile">
                                    <div id="preview" class="profile-img"><img src="common/images/profile-default.svg"></div>
									<input type="file" name="mb_picture" accept=".jpg, .png, .jpeg, .bmp, .tif, .gif, .svg" id="profile-photo" />
									<label for="profile-photo">프로필 사진 바꾸기</label>

									<div class="security-form">
										<span>끼리공개</span>
										<input type="checkbox" name='mb_info_open' value='1' id="security"  />
										<label for="security"></label>
									</div>
								</div>

								<div class="table">
									<div class="row">
										<div class="cell">
											<div class="subject">소개글 수정</div>
											<div>
												<textarea name='mb_info'></textarea>
											</div>
										</div>
									</div>
								</div>

								<div class="add-wish">
									<h3>관심운동 수정(최소 1개 최대 3개 선택해주세요)</h3>
									<div class="type-exer clear">
										<div>
											<input type="checkbox" id="exer01" name='mb_attention[]' class="chk" value="헬스" checked>
											<label for="exer01">헬스</label>
										</div>
										<div>
											<input type="checkbox" id="exer02" name='mb_attention[]' class="chk" value="골프" >
											<label for="exer02">골프</label>
										</div>
										<div>
											<input type="checkbox" id="exer03" name='mb_attention[]' class="chk" value="자전거" checked>
											<label for="exer03">자전거</label>
										</div>
										<div>
											<input type="checkbox" id="exer04" name='mb_attention[]' class="chk" value="등산" >
											<label for="exer04">등산</label>
										</div>
										<div>
											<input type="checkbox" id="exer05" name='mb_attention[]' class="chk" value="축구" >
											<label for="exer05">축구</label>
										</div>
										<div>
											<input type="checkbox" id="exer06" name='mb_attention[]' class="chk" value="농구" >
											<label for="exer06">농구</label>
										</div>
										<div>
											<input type="checkbox" id="exer07" name='mb_attention[]' class="chk" value="야구" >
											<label for="exer07">야구</label>
										</div>
										<div>
											<input type="checkbox" id="exer08" name='mb_attention[]' class="chk" value="탁구" >
											<label for="exer08">탁구</label>
										</div>
										<div>
											<input type="checkbox" id="exer09" name='mb_attention[]' class="chk" value="테니스" >
											<label for="exer09">테니스</label>
										</div>
										<div>
											<input type="checkbox" id="exer10" name='mb_attention[]' class="chk" value="배드민턴" checked>
											<label for="exer10">배드민턴</label>
										</div>
										<div>
											<input type="checkbox" id="exer11" name='mb_attention[]' class="chk" value="런닝" >
											<label for="exer11">런닝</label>
										</div>
										<div>
											<input type="checkbox" id="exer12" name='mb_attention[]' class="chk" value="볼링" >
											<label for="exer12">볼링</label>
										</div>
										<div class="etc-input ">
											<span>기타 : </span>
											<input type="text" name='mb_attention_etc' value="" placeholder="직접 입력" >
										</div>

										<!--
										<div class="etc-input ">
											<span>기타 : <em>직접 입력</em></span>
											<input type="text" name='mb_attention_etc' value="" placeholder="직접 입력"  >
										</div>-->
									</div>
								</div>
								<button type="button" class="comple-btn save-btn on">변경완료</button>

								<div id="filter-reset-pop" class="modal">
							    	<div class="modal-content">
							    		<div class="scroll">
									    	<p class="sub-title ta_c">수정되었습니다.</p>
									        <div class="btn">
									            <button type="submit" class="complete-btn blue-btn w100" style="margin:0;">확인</button>
									        </div>
									    </div>
								    </div>
							    </div>

							    <!-- 끼리공개 팝업 -->
							    <div id="security-pop" class="modal">
							    	<div class="modal-content">
							    		<div class="scroll">
									    	<p class="sub-title ta_c" style="margin-bottom: 30px;">
									    		끼리공개를 ON 하셔도<br>기존 팔로워와 끼리톡은<br>현 상태를 그대로 유지합니다.<br>
									    		<br>
												끼리공개를 ON 하시겠습니까?
									    	</p>
									        <div class="btn">
									        	<button type="button" class="complete-btn gray-btn">취소</button>
									            <button type="button" class="complete-btn blue-btn">확인</button>
									        </div>
									    </div>
								    </div>
							    </div>
							    <!-- -->
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		



		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script type="text/javascript" src="common/js/swiper.min.js"></script>
		<script src="common/js/includeHTML.js"></script>
		<script src="common/js/nouislider.js"></script>
		<script src="common/js/script.js"></script>
		<script>
			var sel_files = [];
			$(document).on("change", "#profile-photo", handleImgsFilesSelect);
			function handleImgsFilesSelect(e) {
				var $input = $(this);
				var inputFiles = this.files;
				if(inputFiles == undefined || inputFiles.length == 0) return;
				var inputFile = inputFiles[0];
			    var files = e.target.files;
			    var filesArr = Array.prototype.slice.call(files);
                var str = $(this).val();
                var fileName = str.split('\\').pop().toLowerCase();

			    filesArr.forEach(function(f) {
			        if(!f.type.match("image.*")) {
			            alert("확장자는 이미지 확장자만 가능합니다.");
			            return;
			        } else if(f.type.match("image/gif")) {
                        alert("Gif 파일은 업로드 하실 수 없습니다.");
                        return;
                    } 

                    $('#loading_img').show();   

			        sel_files.push(f);

			        var reader = new FileReader();
			        reader.onload = function(event) {
			        	$('#loading_img').hide();   
			            $input.parent().find("#preview img").attr("src",event.target.result);
			            checkFileName(fileName);
			        };
			        reader.readAsDataURL(f);
			    });
			}



			var chkCheck = $(".type-exer input[type=checkbox]:checked").length;
			$(".type-exer input[type=checkbox]:checked").addClass("active");
			console.log(chkCheck);

		    $(".chk").change(function() {
		    	if($(this).is(":checked")) {
		    		$(this).addClass("active");
		    	} else {
		    		$(this).removeClass("active");
		    	}

				var activeCheck = $(".type-exer").find(".active").length;
				var activeLeng = $(".chk").prop("checked").length;
				if(activeCheck > 0 ) {
					$(".comple-btn").removeClass("gray-btn").addClass("on");
				} else {
					$(".comple-btn").addClass("gray-btn").removeClass("on");
				}

				if(activeCheck > 3) {
					alert("최대 3개까지 선택 가능합니다.");
					$(this).removeClass("active").prop("checked",false);
					if($(".etc-input").hasClass("on") === false) {
						$(this).find("input").val('');
					}
				}
				if($(".etc-input").find("input").val() == '') {
					$(".etc-input").removeClass("on active");
				}
				/*if($(".etc-input").find("input").hasClass("active") === false) {
					$(this).removeClass("active on");
					$(this).find("input").val('').blur();
				}*/
			});

			$(".etc-input").click(function() {
				if($(this).hasClass("active") === true) {
					$(this).removeClass("active");
					if($(this).hasClass("on") === true) {
						$(this).removeClass("on");
						$(this).find("input").val('');
					}
				} else {
					if($(this).find("input").val() == '') {
						$(this).removeClass("active on");
						$(this).find("input").val('');
					}
				}

				var activeCheck = $(".type-exer").find(".active").length;
				var activeLeng = $(".chk").prop("checked").length;
				if(activeCheck < 1 ) {
					$(".comple-btn").addClass("gray-btn").removeClass("on");
				} else {
					$(".comple-btn").removeClass("gray-btn").addClass("on");
				}

				if(activeCheck > 3) {
					alert("최대 3개까지 선택 가능합니다.");
					$(this).removeClass("active on");
					if($(".etc-input").hasClass("on") === false) {
						$(this).find("input").val('');
					}
				}

			});
			$(".etc-input").on('input',function(){
				$(this).addClass("active on");

				if($(this).find("input").val() == '') {
					$(this).removeClass("active on");
					$(this).find("input").val('');
				}


				var activeCheck = $(".type-exer").find(".active").length;
				var activeLeng = $(".chk").prop("checked").length;
				if(activeCheck < 1 ) {
					$(".comple-btn").addClass("gray-btn").removeClass("on");
				} else {
					$(".comple-btn").removeClass("gray-btn").addClass("on");
				}

				if(activeCheck > 3) {
					alert("최대 3개까지 선택 가능합니다.");
					$(this).removeClass("active on");
					if($(".etc-input").hasClass("on") === false) {
						$(this).find("input").val('');
					}
				}

				/*if($(this).find("input").hasClass("active") === false) {
					$(this).removeClass("active on");
					$(this).find("input").val('').blur();
				}*/
			});

			$("textarea").on('input',function(){
				$(".comple-btn").removeClass("gray-btn").addClass("on");
			});

			
			
			$(document).on("click",".comple-btn.gray-btn",function() {
				var activeCheck = $(".type-exer").find(".active").length;
				if(activeCheck < 1 ) {
					$(".comple-btn").addClass("gray-btn");
					alert("최소 1개 이상 선택해주세요.");
				} else {
					if($(".etc-input").find("input").val() == '') {
						$(".etc-input").removeClass("on active");
						alert("최소 1개 이상 선택해주세요.");
					} else {
						$(".comple-btn").removeClass("gray-btn");
					}
				}
				//alert("최소 1개 이상 선택해주세요.");
				//$("#filter-reset-pop").hide();
			});

			/*
			$(document).on("click",".comple-btn",function() {
				if($(".etc-input.active input").val()=='') {
					alert("기타 항목을 입력해주세요.");
					$(".etc-input input").focus();
                    return false;
				}
			});
			*/

			$(document).on("click",".comple-btn.on",function() {
				if (confirm("수정하시겠습니까?") == true){
					$("#filter-reset-pop").show();
				} else {
					return false;
				}
			});


			$("input[name=mb_info_open]").change(function() {
				if($(this).is(":checked") === true) {
					$(this).prop("checked",false);
					$("#security-pop").show();
				} else {
					$("#security-pop").hide();
				}
			});
			$("#security-pop .btn button.gray-btn").click(function() {
				$("#security-pop").hide();
			});
			$("#security-pop .btn button.blue-btn").click(function() {
				$("input[name=mb_info_open]").prop("checked",true);
				$("#security-pop").hide();
			});

			

            function saveModifyInfo()
            {
				var activeCheck = $(".type-exer").find(".active").length;
                console.log(activeCheck);
				
					

				if(activeCheck > 3) {
					alert("최대 3개까지 선택 가능합니다.");
					$(this).removeClass("active");
					$(this).prop("checked", false);
                    return false;
				}

				event.preventDefault();
				var form = $('#myinfo_form')['0'];
				var data = new FormData(form);
				$.ajax({
					type: "POST",
					enctype: 'multipart/form-data',
					url: "/_ajax.front.php",
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					timeout: 600000,
					success: function(data) {
						//alert('수정되었습니다.');
						location.href='myinfo_user.php';
                        //document.location.reload();
						
					}
				});

                return false;
			}

			window.onpageshow = function(event) { 
                if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) { 
                    $(".pop-bg").hide();
                    $("#filter-reset-pop").hide();
                } 
            }

			includeHTML( function () {
				$(".ft05").addClass("active");
			});
		</script>
	</body>
</html>