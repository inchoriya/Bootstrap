<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ICIAdmin</title>
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

<style>
.center1 {
	margin: 0 auto;
}
</style>

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



	<header id="header" class="header fixed-top d-flex align-items-center">
		<%@ include file="header.jsp"%>
	</header>

	<aside id="sidebar" class="sidebar">
		<%@ include file="sidebar.jsp"%>
	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">



		<section class="section">
			<div class="row">

				<div class="col-lg-9" style="margin: 0 auto;">

					<div class="card">
						<div class="card-body">
							<br />
							<!-- Slides with captions -->
							<div id="carouselExampleCaptions" class="carousel slide"
								data-bs-ride="carousel">
								<div class="carousel-indicators">
									<button type="button" data-bs-target="#carouselExampleCaptions"
										data-bs-slide-to="0" class="active" aria-current="true"
										aria-label="Slide 1"></button>
									<button type="button" data-bs-target="#carouselExampleCaptions"
										data-bs-slide-to="1" aria-label="Slide 2"></button>
									<button type="button" data-bs-target="#carouselExampleCaptions"
										data-bs-slide-to="2" aria-label="Slide 3"></button>
								</div>
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img src="resources/img/icia.png" class="d-block w-100"
											alt="..." height="500px">
										<div class="carousel-caption d-none d-md-block">
											<h5>인천일보 아카데미</h5>
											<p>고용노동부 선정 인천유일 베스트 직업훈련 기관</p>
										</div>
									</div>
									<div class="carousel-item">
										<img src="resources/img/402.jpg" class="d-block w-100"
											alt="..." height="500px">
										<div class="carousel-caption d-none d-md-block">
											<h5>402 강의실 수업중</h5>
											<p>게임하는거 아님.. 시스템 환경분석중..</p>
										</div>
									</div>
									<div class="carousel-item">
										<img src="resources/img/default.png" class="d-block w-100"
											alt="..." height="500px">
										<div class="carousel-caption d-none d-md-block">
											<h5>ㄷㄷㄷㄷㄷㄷㄷ</h5>
											<p>2023.03.21 ~ 2023.08.22</p>
										</div>
									</div>
								</div>

								<button class="carousel-control-prev" type="button"
									data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
									<span class="carousel-control-prev-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Previous</span>
								</button>
								<button class="carousel-control-next" type="button"
									data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Next</span>
								</button>

							</div>
							<!-- End Slides with captions -->

						</div>
					</div>

				</div>
			</div>

			<!-- 버튼 추가 -->
			<div class="row">
				<div class="col-lg-9" style="margin: 0 auto;">
					<div class="card">
						<div class="card-body" style="text-align: center;">
							<br />
							<c:choose>
								<c:when test="${login.MId eq 'admin'}">
									<button type="button" id="adminp"
										class="btn btn-light rounded-pill">관리자페이지</button>
									<button type="button" id="mlist"
										class="btn btn-warning rounded-pill">회원목록</button>
									<button type="button" id="blist"
										class="btn btn-dark rounded-pill">게시글목록</button>
									<button type="button" id="write"
										class="btn btn-info rounded-pill">게시글작성</button>
									<button type="button" id="mypage"
										class="btn btn-danger rounded-pill">마이페이지</button>
									<button type="button" id="logout"
										class="btn btn-success rounded-pill">로그아웃</button>
								</c:when>

								<c:when test="${login ne null}">
									<button type="button" id="write"
										class="btn btn-info rounded-pill">게시글작성</button>
									<button type="button" id="blist"
										class="btn btn-dark rounded-pill">게시글목록</button>
									<button type="button" id="mypage"
										class="btn btn-danger rounded-pill">마이페이지</button>
									<button type="button" id="logout"
										class="btn btn-success rounded-pill">로그아웃</button>
								</c:when>

								<c:otherwise>
									<button type="button" id="join"
										class="btn btn-primary rounded-pill">회원가입</button>
									<button type="button" id="login"
										class="btn btn-secondary rounded-pill">로그인</button>
									<button type="button" id="inmodal"
										class="btn btn-danger rounded-pill" data-bs-toggle="modal"
										data-bs-target="#largeModal">로그인 모달</button>
									<button type="button" id="blist"
										class="btn btn-dark rounded-pill">게시글목록</button>
								</c:otherwise>


							</c:choose>
						</div>
					</div>
				</div>
			</div>

			<div class="modal fade" id="largeModal" tabindex="-1">
				<div class="modal-dialog modal-lg">
					<div class="modal-content" >
						<div class="modal-header" >
							<div class="d-flex justify-content-center py-4">
								<a href="index.html"
									class="logo d-flex align-items-center w-auto"> <img
									src="resources/img/logo.png" alt=""> <span
									class="d-none d-lg-block">ICIAdmin</span>
								</a>
							</div>
							<!-- End Logo -->
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						
						<form action="mLogin" method="POST" class="g-3 needs-validation" novalidate>
						<div class="modal-body" >
							<div class="modalwrap" style="width: 80%; margin: 0 auto;">
							<div class="col-9" style="margin: 0 auto;">
								<h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
								<p class="text-center small">Enter your username & password to login</p>
							</div>
							
							<div class="col-9" style="margin: 0 auto;">
								<label for="yourUsername" class="form-label">아이디</label>
								<div class="input-group has-validation">
									<input type="text" name="mId" class="form-control" id="mId" required>
									<div class="invalid-feedback">아이디를 입려해주세요!</div>
								</div>
							</div>

								<div class="col-9" style="margin: 0 auto;">
									<label for="yourPassword" class="form-label">비밀번호</label> <input
										type="password" name="mPw" class="form-control" id="mPw"
										required>
									<div class="invalid-feedback">비밀번호를 입력해주세요!</div>
								</div>

								<div class="col-9" style="margin: 0 auto;">
									<div class="form-check">
										<input class="form-check-input" type="checkbox"
											name="remember" value="true" id="rememberMe"> <label
											class="form-check-label" for="rememberMe">Remember me</label>
									</div>
								</div>

								<div class="col-9" style="margin: 0 auto;">
									<p class="small mb-0">
										Don't have account? <a href="pages-register.html">Create
											an account</a>
									</p>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button class="btn btn-primary" type="submit">Login</button>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
						</div>
</form>

					</div>
				</div>
			</div>
			<!-- End Large Modal-->
		</section>

	</main>
	<!-- End #main -->





	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<%@ include file="footer.jsp" %>
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

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>

	<script>
		$('#join').click(function() {
			location.href = "joinForm";
		});

		$('#login').click(function() {
			location.href = "loginForm";
		});

		$('#logout').click(function() {
			location.href = "logout";
		});

		$('#mlist').click(function() {
			location.href = "mList";
		});

		$('#mypage').click(function() {
			location.href = "mView?mId=${login.MId}";
		});

		$('#write').click(function() {
			location.href = "writeForm";
		});

		$('#blist').click(function() {
			location.href = "bList";
		});
	</script>

</body>

</html>