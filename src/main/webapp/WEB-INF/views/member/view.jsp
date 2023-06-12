<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ICIAdmin_회원정보</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="resources/img/favicon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="resources/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="resources/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="resources/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="resources/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="resources/vendor/simple-datatables/style.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center">
		<%@ include file="../header.jsp"%>
	</header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item"><a class="nav-link collapsed" href="index">
					<i class="bi bi-grid"></i> <span>홈으로</span>
			</a></li>
			<!-- End Dashboard Nav -->

			<li class="nav-item"><a class="nav-link"
				data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-menu-button-wide"></i><span>회원 관리</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="components-nav" class="nav-content collapse show"
					data-bs-parent="#sidebar-nav">

					<li><a href="joinForm"> <i class="bi bi-circle"></i><span>회원가입</span>
					</a></li>

					<li><a href="loginForm"> <i class="bi bi-circle"></i><span>로그인</span>
					</a></li>

					<li><a href="mList"> <i class="bi bi-circle"></i><span>회원목록</span>
					</a></li>

					<li><a href="mView?mId=${login.MId}" class="active"> <i
							class="bi bi-circle"></i><span>마이페이지</span>
					</a></li>

					<li><a href="logout"> <i class="bi bi-circle"></i><span>로그아웃</span>
					</a></li>



				</ul></li>
			<!-- End Components Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>게시글 관리</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="forms-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="writeForm"> <i class="bi bi-circle"></i><span>게시글
								작성</span>
					</a></li>

					<li><a href="bList"> <i class="bi bi-circle"></i><span>게시글
								목록</span>
					</a></li>

					<li><a href="#"> <i class="bi bi-circle"></i><span>내가
								쓴 게시글 목록</span>
					</a></li>

					<li><a href="#"> <i class="bi bi-circle"></i><span>내가
								쓴 댓글 목록</span>
					</a></li>

				</ul></li>
			<!-- End Forms Nav -->


		</ul>


	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>회원관리 회원정보</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">회원관리</li>
					<li class="breadcrumb-item active">회원정보</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section profile">
			<div class="row">

				<!--  -->
				<div class="col-xl-8">

					<div class="card">
						<div class="card-body pt-3">
							<!-- Bordered Tabs -->
							<ul class="nav nav-tabs nav-tabs-bordered">

								<li class="nav-item">
									<button class="nav-link active" data-bs-toggle="tab"
										data-bs-target="#profile-overview">상세정보</button>
								</li>

								<c:if test="${login.MId eq view.MId || login.MId eq 'admin'}">
									<!-- 본인 수정 -->
									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab"
											data-bs-target="#profile-edit">정보수정</button>
									</li>

									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab"
											data-bs-target="#profile-change-password">비밀번호 변경</button>
									</li>

									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab"
											data-bs-target="#profile-settings">탈퇴</button>
									</li>
								</c:if>

							</ul>
							<div class="tab-content pt-2">

								<div class="tab-pane fade show active profile-overview"
									id="profile-overview">

									<h5 class="card-title">profile 상세보기</h5>
									<div style="text-align: center;">
										<img src="resources/profile/${view.MProfileName}"
											alt="Profile" class="rounded-circle" width="150px">
										<h2>${view.MName}</h2>
										<h5>${view.MId}</h5>

										<div class="social-links mt-2">
											<a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
											<a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
											<a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
											<a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label ">이름</div>
										<div class="col-lg-9 col-md-8">${view.MName}</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">아이디</div>
										<div class="col-lg-9 col-md-8">${view.MId}</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">생년월일</div>
										<div class="col-lg-9 col-md-8">${view.MBirth}</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">성별</div>
										<div class="col-lg-9 col-md-8">${view.MGender}</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">이메일</div>
										<div class="col-lg-9 col-md-8">${view.MEmail}</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">연락처</div>
										<div class="col-lg-9 col-md-8">${view.MPhone}</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">주소</div>
										<div class="col-lg-9 col-md-8">${view.MAddr}</div>
									</div>

								</div>

								<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

									<!-- Profile Edit Form -->
									<form action="mModify" method="POST" encType="multipart/form-data" name="mModiForm">
									<input type="hidden" name="mId" value="${view.MId}"/>
									<input type="hidden" name="mProfileName" value="${view.MProfileName}"/>
										<div class="row mb-3">
											<label for="profileImage"
												class="col-md-4 col-lg-3 col-form-label">프로필 사진</label>
											<div class="col-md-8 col-lg-9">
												<img id="mProfileName" src="resources/profile/${view.MProfileName}" alt="Profile" width="150px">
												<input class="form-control" type="file" name="mProfile" id="mProfile">
												
											</div>
										</div>

										<div class="row mb-3">
											<label for="mName" class="col-md-4 col-lg-3 col-form-label">이름</label>
											<div class="col-md-8 col-lg-9">
												<input name="mName" type="text" class="form-control" id="mName" placeholder="${view.MName}" required>
											</div>
										</div>


										<div class="row mb-3">
											<label for="mBirth" class="col-md-4 col-lg-3 col-form-label">생년월일</label>
											<div class="col-md-8 col-lg-9">
												<input type="date" class="form-control" name="mBirth" id="mBirth">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Job" class="col-md-4 col-lg-3 col-form-label">성별</label>
											<div class="col-md-8 col-lg-9">
												<div class="col-sm-10">

													<div class="form-check">
														<input class="form-check-input" type="radio" name="mGender" id="mGender1" value="남자"> 
														<label class="form-check-label" for="mGender1"> 남자 </label>
													</div>

													<div class="form-check">
														<input class="form-check-input" type="radio"name="mGender" id="mGender2" value="여자"> 
														<label class="form-check-label" for="mGender2"> 여자 </label>
													</div>
												</div>
											</div>
										</div>


										<div class="row mb-3">
											<label for="mEmail" class="col-md-4 col-lg-3 col-form-label">이메일</label>
											<div class="col-md-8 col-lg-9">
												<input name="mEmail" type="email" class="form-control" id="mEmail" placeholder="${view.MEmail}">
											</div>
											
											
										</div>

										<div class="row mb-3">
											<label for="Address" class="col-md-4 col-lg-3 col-form-label">주소</label>
											<div class="col-md-8 col-lg-9">
												<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" onfocus="sample6_execDaumPostcode()">
												<input type="text" class="form-control" id="sample6_address" placeholder="주소" onfocus="sample6_execDaumPostcode()"><br>
												<input type="text" class="form-control" id="sample6_detailAddress" onfocus="this.placeholder = ''" placeholder="${view.MAddr}">
												<input type="hidden" id="mAddr" name="mAddr"/>
											</div>
										</div>

										<div class="row mb-3">
											<label for="mPhone" class="col-md-4 col-lg-3 col-form-label">연락처</label>
											<div class="col-md-8 col-lg-9">
												<input name="mPhone" type="text" class="form-control" id="mPhone" placeholder="${view.MPhone}">
											</div>
										</div>


										<div class="row mb-3">
											<label for="Twitter" class="col-md-4 col-lg-3 col-form-label">Twitter
												Profile</label>
											<div class="col-md-8 col-lg-9">
												<input name="twitter" type="text" class="form-control"
													id="Twitter" value="https://twitter.com/#">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Facebook" class="col-md-4 col-lg-3 col-form-label">Facebook</label>
											<div class="col-md-8 col-lg-9">
												<input name="facebook" type="text" class="form-control" id="Facebook" value="https://facebook.com/#">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Instagram" class="col-md-4 col-lg-3 col-form-label">Instagram</label>
											<div class="col-md-8 col-lg-9">
												<input name="instagram" type="text" class="form-control" id="Instagram" value="https://instagram.com/#">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Linkedin" class="col-md-4 col-lg-3 col-form-label">Linkedin</label>
											<div class="col-md-8 col-lg-9">
												<input name="linkedin" type="text" class="form-control" id="Linkedin" value="https://linkedin.com/#">
											</div>
										</div>

										<div class="text-center">
											<input type="button" id="submitForm" class="btn btn-primary" value="정보 수정">
										</div>
									</form>
									<!-- End Profile Edit Form -->

								</div>

								<div class="tab-pane fade pt-3" id="profile-settings">

									<!-- 회원탈퇴 안내 -->
									

										<div class="row mb-3">
											<label class="col-md-4 col-lg-3 col-form-label"><h3>회원탈퇴 안내</h3></label>
											<div class="col-md-8 col-lg-9">
												<p>회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
												<p>사용하고 계신 아이디(${view.MId})는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</p>
												<p>탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.</p>
												<p>탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</p>
												<p>회원정보 및 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.</p>
												
											</div>
										</div>

										<div class="text-center">
											<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basicModal">탈퇴</button>
										</div>
										
										<!-- 회원탈퇴 모달 -->
										<div class="modal fade" id="basicModal" tabindex="-1">
											<div class="modal-dialog">
	  										<div class="modal-content">
												<div class="modal-header">
		  										<h5 class="modal-title">비밀번호 확인</h5>
		  										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
		  										<input type="password" id="delPw" class="form-control"/>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="deleteBtn" >확인</button>
													<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
												</div>
	  										</div>
											</div>
  										</div><!-- End Basic Modal-->
									
									<!-- End settings Form -->

								</div>

								<div class="tab-pane fade pt-3" id="profile-change-password">
									<!-- Change Password Form -->
									<form action="changePw" method="POST" name="changeForm">

										<div class="row mb-3">
											<label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">현재 비밀번호</label>
											<div class="col-md-8 col-lg-9">
												<input type="hidden" name="mId" value="${view.MId}"/>
												<input type="password" class="form-control" id="currPw" name="currPw">												
											</div>
										</div>

										<div class="row mb-3">
											<label for="newPassword" class="col-md-4 col-lg-3 col-form-label">새로운 비밀번호</label>
											<div class="col-md-8 col-lg-9">
												<input name="mPw" type="password" class="form-control" id="mPw">
											</div>
										</div>

										<div class="row mb-3">
											<label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">비밀번호 확인</label>
											<div class="col-md-8 col-lg-9">
												<input name="checkPw" type="password" class="form-control" id="checkPw">
												<br/><span id="checkResult"></span>
											</div>
										</div>

										<div class="text-center">
											<input type="button" class="btn btn-primary" value="비밀번호 변경" id="changeBtn">
										</div>
									</form>
									<!-- End Change Password Form -->

								</div>

							</div>
							<!-- End Bordered Tabs -->

						</div>
					</div>

				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->
	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<%@ include file="../footer.jsp" %>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="resources/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/vendor/chart.js/chart.umd.js"></script>
	<script src="resources/vendor/echarts/echarts.min.js"></script>
	<script src="resources/vendor/quill/quill.min.js"></script>
	<script src="resources/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="resources/vendor/tinymce/tinymce.min.js"></script>
	<script src="resources/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="resources/js/main.js"></script>

	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>		
	
	<script>
		let check1 = false;
		
		$('#deleteBtn').click(function(){
			let mId = '${view.MId}';
			let mProfileName = '${view.MProfileName}';
			let mPw = $('#delPw').val();
			
			console.log('mId : ' + mId + ', mPw :' + mPw);
			
			$.ajax({
				type : "POST",
				url : "checkPw",
				data : {
					"mId" : mId,
					"mPw" : mPw
				}, 
				dataType : "text", 
				success : function(result){
					
					if(result=="OK"){
						location.href="mDelete?mId=" + mId + "&mProfileName=" + mProfileName;
					} else {
						alert('비밀번호를 확인해주세요');
					}
				},
				error : function(){
					alert("delPw함수 통신실패!");
				}
			});
			
		
		});
		
		$('#changeBtn').click(function(){
			let mId = '${view.MId}';
			let mPw = $('#currPw').val();
			
			$.ajax({
				type : "POST",
				url : "checkPw",
				data : {
					"mId" : mId,
					"mPw" : mPw
				}, 
				dataType : "text", 
				success : function(result){
					if(result=="OK"){
						if(check1){
							changeForm.submit();
						} else {
							alert('변경할 비밀번호를 확인해주세요.');
							$('#checkPw').val("");
						}
					} else {
						alert('현재 비밀번호를 확인해주세요');		
						$('#currPw').val("");
					}
				},
				error : function(){
					alert("checkPw함수 통신실패!");
					
				}
			});
			
		
		});
			
		$('#checkPw').change(function(){
			let pw1 = $('#mPw').val();
			let pw2 = $('#checkPw').val();
			let checkResult = $('#checkResult');
			
			if(pw1==pw2){
				checkResult.html("비밀번호가 일치합니다.");
				checkResult.css("color", "blue");
				check1 = true;
			} else {
				checkResult.html("비밀번호가 일치하지 않습니다.");
				checkResult.css("color", "red");
				check1 = false;
			}
		});
		
		
		
	
		/* 성별 체크하는 방법 */
		$(function() {
			$('input:radio[name=mGender]:input[value=${view.MGender}]').attr(
					"checked", true);
		});
		
		$('#submitForm').click(function() {
			
			let mAddr = $('#mAddr');
			
			let addr1 = $('#sample6_postcode').val();
			let addr2 = $('#sample6_address').val();
			let addr3 = $('#sample6_detailAddress').val();
			
			let addr = "("+ addr1 +") " + addr2 + ", " + addr3;
			mAddr.val(addr);

			mModiForm.submit();	
		});
		
		
		
		function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	               
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	                
	            }
	        }).open();
	    }
		
		
		/* 사진 미리보기 */
		$("#mProfile").on("change", function(event) {
			
			let file = event.target.files[0];

		    let reader = new FileReader(); 
		    reader.onload = function(e) {

		        $("#mProfileName").attr("src", e.target.result);
		    }

		    reader.readAsDataURL(file);
		});
		
	
	</script>

</body>

</html>