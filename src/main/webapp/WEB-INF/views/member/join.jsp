<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<!DOCTYPE html>
	<html lang="ko">

	<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1.0" name="viewport">

		<title>ICIAdmin_회원가입</title>
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
		<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
		<link href="resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
		<link href="resources/vendor/quill/quill.snow.css" rel="stylesheet">
		<link href="resources/vendor/quill/quill.bubble.css" rel="stylesheet">
		<link href="resources/vendor/remixicon/remixicon.css" rel="stylesheet">
		<link href="resources/vendor/simple-datatables/style.css" rel="stylesheet">

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
			<%@ include file="../header.jsp" %>
		</header><!-- End Header -->

		<!-- ======= Sidebar ======= -->
		<aside id="sidebar" class="sidebar">

			<ul class="sidebar-nav" id="sidebar-nav">

				<li class="nav-item">
					<a class="nav-link collapsed" href="index">
						<i class="bi bi-grid"></i>
						<span>홈으로</span>
					</a>
				</li><!-- End Dashboard Nav -->

				<li class="nav-item">
					<a class="nav-link" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
						<i class="bi bi-menu-button-wide"></i><span>회원 관리</span><i
							class="bi bi-chevron-down ms-auto"></i>
					</a>
					<ul id="components-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">

						<li>
							<a href="joinForm" class="active">
								<i class="bi bi-circle"></i><span>회원가입</span>
							</a>
						</li>

						<li>
							<a href="loginForm">
								<i class="bi bi-circle"></i><span>로그인</span>
							</a>
						</li>

						<li>
							<a href="mList">
								<i class="bi bi-circle"></i><span>회원목록</span>
							</a>
						</li>

						<li>
							<a href="mView?mId=${login.MId}">
								<i class="bi bi-circle"></i><span>마이페이지</span>
							</a>
						</li>

						<li>
							<a href="logout">
								<i class="bi bi-circle"></i><span>로그아웃</span>
							</a>
						</li>



					</ul>
				</li><!-- End Components Nav -->

				<li class="nav-item">
					<a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
						<i class="bi bi-journal-text"></i><span>게시글 관리</span><i class="bi bi-chevron-down ms-auto"></i>
					</a>
					<ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
						<li>
							<a href="writeForm">
								<i class="bi bi-circle"></i><span>게시글 작성</span>
							</a>
						</li>

						<li>
							<a href="bList">
								<i class="bi bi-circle"></i><span>게시글 목록</span>
							</a>
						</li>

						<li>
							<a href="#">
								<i class="bi bi-circle"></i><span>내가 쓴 게시글 목록</span>
							</a>
						</li>

						<li>
							<a href="#">
								<i class="bi bi-circle"></i><span>내가 쓴 댓글 목록</span>
							</a>
						</li>

					</ul>
				</li><!-- End Forms Nav -->


			</ul>


		</aside><!-- End Sidebar-->

		<main id="main" class="main">

			<div class="pagetitle">
				<h1>회원관리 가입</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index">Home</a></li>
						<li class="breadcrumb-item">회원관리</li>
						<li class="breadcrumb-item active">회원가입</li>
					</ol>
				</nav>
			</div><!-- End Page Title -->

			<section class="section">
				<div class="row">
					<div class="col-lg-9">

						<div class="card">
							<div class="card-body">
								<br />

								<!-- General Form Elements -->
								<form action="mJoin" method="POST" encType="multipart/form-data" name="mJoinForm">

									<!-- 아이디 -->
									<div class="row mb-3">
										<label for="inputText" class="col-sm-2 col-form-label">아이디</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="mId" id="mId">
											<br /><span id="check1"></span>
										</div>
									</div>

									<!-- 비밀번호 -->
									<div class="row mb-3">
										<label for="inputText" class="col-sm-2 col-form-label">비밀번호</label>
										<div class="col-sm-10">
											<input type="password" class="form-control" name="mPw" id="mPw"
												placeholder="영문, 숫자, 특수문자를 혼합해서 8자 이상" />
											<br /><span id="check2"></span>
										</div>
									</div>

									<!-- 비밀번호 -->
									<div class="row mb-3">
										<label for="inputText" class="col-sm-2 col-form-label">비밀번호 확인</label>
										<div class="col-sm-10">
											<input type="password" class="form-control" id="checkPw" />
											<br /><span id="check3"></span>
										</div>
									</div>

									<!-- 이름 -->
									<div class="row mb-3">
										<label for="inputText" class="col-sm-2 col-form-label">이름</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="mName">
										</div>
									</div>

									<!-- 생년월일 -->
									<div class="row mb-3">
										<label for="inputDate" class="col-sm-2 col-form-label">생년월일</label>
										<div class="col-sm-10">
											<input type="date" class="form-control" name="mBirth">
										</div>
									</div>

									<!-- 성별 -->
									<fieldset class="row mb-3">
										<legend class="col-form-label col-sm-2 pt-0">성별</legend>
										<div class="col-sm-10">

											<div class="form-check">
												<input class="form-check-input" type="radio" name="mGender"
													id="mGender1" value="남자" checked>
												<label class="form-check-label" for="mGender1">
													남자
												</label>
											</div>

											<div class="form-check">
												<input class="form-check-input" type="radio" name="mGender"
													id="mGender2" value="여자">
												<label class="form-check-label" for="mGender2">
													여자
												</label>
											</div>

										</div>
									</fieldset>



									<!-- 이메일 -->
									<div class="row mb-3">
										<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
										<div class="col-sm-10">
											<input type="email" class="form-control" name="mEmail">
										</div>
									</div>

									<!-- 연락처 -->
									<div class="row mb-3">
										<label for="inputText" class="col-sm-2 col-form-label">연락처</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="mPhone">
										</div>
									</div>

									<!-- 주소 -->
									<div class="row mb-3">
										<label for="inputText" class="col-sm-2 col-form-label">주소</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="sample6_postcode"
												placeholder="우편번호" onfocus="sample6_execDaumPostcode()">
											<input type="text" class="form-control" id="sample6_address"
												placeholder="주소" onfocus="sample6_execDaumPostcode()"><br>
											<input type="text" class="form-control" id="sample6_detailAddress"
												placeholder="상세주소">
											<input type="hidden" id="mAddr" name="mAddr" />
										</div>
									</div>

									<!-- 프로필 사진 -->
									<div class="row mb-3">
										<label for="inputNumber" class="col-sm-2 col-form-label">프로필 사진</label>
										<div class="col-sm-10">
											<input class="form-control" type="file" name="mProfile" id="mProfile">
											<img id="mProfileName" width="150px">
										</div>
									</div>

									<div class="row mb-3">
										<label class="col-sm-2 col-form-label"></label>
										<div class="col-sm-10">
											<input type="button" id="submitForm" class="btn btn-primary" value="가입" />
										</div>
									</div>

								</form><!-- End General Form Elements -->

							</div>
						</div>

					</div>


				</div>
			</section>

		</main><!-- End #main -->

		<!-- ======= Footer ======= -->
		<footer id="footer" class="footer">
			<%@ include file="../footer.jsp" %>
		</footer><!-- End Footer -->

		<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
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
			integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			let check11 = false;
			let check22 = false;
			let check33 = false;

			$('#submitForm').click(function () {

				let mAddr = $('#mAddr');

				let addr1 = $('#sample6_postcode').val();
				let addr2 = $('#sample6_address').val();
				let addr3 = $('#sample6_detailAddress').val();

				let addr = "(" + addr1 + ") " + addr2 + ", " + addr3;
				mAddr.val(addr);

				if (check11 && check22 && check33) {
					mJoinForm.submit();
				} else {
					alert('아이디 비밀번호 확인');
				}


			});

			/* 키를 눌렀다 땟을때 실행 */
			$('#mId').keyup(function () {

				let mId = $('#mId').val();
				let check1 = $('#check1');

				// Ajax 를 사용해서 아이디 중복체크
				$.ajax({
					type: "GET",
					url: "idCheck",
					data:
					{
						"mId": mId
					},
					dataType: "text",
					success: function (result) {
						if (result == "OK") {
							check1.html(mId + "는 사용 가능한 아이디");
							check1.css("color", "blue");
							check11 = true;
						} else {
							check1.html(mId + "는 사용 불가능한 아이디");
							check1.css("color", "red");
						}
					},
					error: function () {
						alert("idCheck함수 통신실패!");
					}
				});




			});

			$('#mPw').keyup(function () {

				let mPw = $('#mPw').val();
				let check2 = $('#check2');


				// 기본값 -1
				let num = mPw.search(/[0-9]/);	// 숫자 입력 여부 : 입력하면 -1이 아니다
				let eng = mPw.search(/[a-z]/);	// 영문 입력 여부 : 입력하면 -1이 아니다
				let spe = mPw.search(/[`~!@#$%^&*|\\\'\":;\/?]/);	// 특수문자 입력 여부 : 입력하면 -1이 아니다
				let spc = mPw.search(/\s/);	// 공백 여부 : 입력하면 -1이 아니다

				// console.log("num = " + num + ", eng = " + eng + ", spe = " + spe + ", spc = " + spc);

				if (mPw.length < 8 || mPw.length > 16) {
					check2.html("비밀번호는 8자리에서 16자리 이내로 입력해주세요.");
					check2.css("color", "red");
				} else if (spc != -1) {
					check2.html("비밀번호는 공백없이 입력해주세요");
					check2.css("color", "red");
				} else if (num == -1 || eng == -1 || spe == -1) {
					check2.html("영문, 숫자, 특수문자를 혼합하여 입력해주세요.");
					check2.css("color", "red");
				} else {
					check2.html("사용가능한 비밀번호 입니다.");
					check2.css("color", "blue");
					check22 = true;
				}
			});

			$('#checkPw').keyup(function () {

				let mPw = $('#mPw').val();
				let checkPw = $('#checkPw').val();

				let check3 = $('#check3');

				if (mPw == checkPw) {
					check3.html("비밀번호 일치");
					check3.css("color", "blue");
					check33 = true;
				} else {
					check3.html("비밀번호 불일치");
					check3.css("color", "red");
				}

			});

			function sample6_execDaumPostcode() {
				new daum.Postcode({
					oncomplete: function (data) {
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
			$("#mProfile").on("change", function (event) {

				let file = event.target.files[0];

				let reader = new FileReader();
				reader.onload = function (e) {

					$("#mProfileName").attr("src", e.target.result);
				}

				reader.readAsDataURL(file);
			});

		</script>

	</body>

	</html>