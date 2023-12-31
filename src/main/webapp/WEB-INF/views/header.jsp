<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- ======= Header ======= -->


<div class="d-flex align-items-center justify-content-between">
	<a href="index" class="logo d-flex align-items-center"> <img
		src="resources/img/logo.png" alt=""> <span
		class="d-none d-lg-block">ICIAdmin</span>
	</a> <i class="bi bi-list toggle-sidebar-btn"></i>
</div>
<!-- End Logo -->

<!-- 검색 시작 -->
<div class="search-bar">
	<form class="search-form d-flex align-items-center" method="POST"
		action="#">
		<input type="text" name="query" placeholder="추후 업데이트 예정"
			title="Enter search keyword">
		<button type="submit" title="Search">
			<i class="bi bi-search"></i>
		</button>
	</form>
</div>
<!-- End Search Bar -->
<!-- 검색 끝 -->



<!-- 로그인 안했을 경우 -->
<c:if test="${login eq null }">
<nav class="header-nav ms-auto">
	<ul class="d-flex align-items-center">

		<li class="nav-item d-block d-lg-none"><a
			class="nav-link nav-icon search-bar-toggle " href="#"> <i
				class="bi bi-search"></i>
		</a></li>
		<!-- End Search Icon-->
		<!-- 알림 시작 -->
		<li class="nav-item dropdown"><a class="nav-link nav-icon"
			href="#" data-bs-toggle="dropdown"> <i class="bi bi-bell"></i> <span
				class="badge bg-primary badge-number">0</span>
		</a>
		<!-- End Notification Icon -->

			
			<!-- End Notification Dropdown Items --></li>
		<!-- End Notification Nav -->
		<!-- 알림 끝 -->

		<!-- 메세지 시작 -->
		<li class="nav-item dropdown"><a class="nav-link nav-icon"
			href="#" data-bs-toggle="dropdown"> <i
				class="bi bi-chat-left-text"></i> <span
				class="badge bg-success badge-number">0</span>
		</a>
		<!-- End Messages Icon -->

			
			<!-- End Messages Dropdown Items --></li>
		<!-- End Messages Nav -->
		<!-- 메세지 끝 -->


		<li class="nav-item dropdown pe-3"><a
			class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
			data-bs-toggle="dropdown"> <img
				src="resources/img/logo.png" alt="Profile"
				class="rounded-circle"> <span
				class="d-none d-md-block dropdown-toggle ps-2">로그인</span>
		</a>
		<!-- End Profile Iamge Icon -->

			<ul
				class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
				<li class="dropdown-header">
					<h6>로그인 후 이용해주세요</span>
				</li>
				<li>
					<hr class="dropdown-divider">
				</li>

				<li>
					<a class="dropdown-item d-flex align-items-center" href="joinForm"> <i class="bi bi-person"></i> <span>회원가입</span></a>
				</li>
				
				<li><hr class="dropdown-divider"></li>

				<li>
					<a class="dropdown-item d-flex align-items-center" href="loginForm"> <i class="bi bi-person"></i> <span>로그인</span></a>
				</li>
			</ul>
			<!-- End Profile Dropdown Items --></li>
		<!-- End Profile Nav -->

	</ul>
</nav>
<!-- End Icons Navigation -->
</c:if>


<!-- 로그인 했을 경우 -->
<c:if test="${login ne null }">
<nav class="header-nav ms-auto">
	<ul class="d-flex align-items-center">

		<li class="nav-item d-block d-lg-none"><a
			class="nav-link nav-icon search-bar-toggle " href="#"> <i
				class="bi bi-search"></i>
		</a></li>
		<!-- End Search Icon-->
		<!-- 알림 시작 -->
		<li class="nav-item dropdown"><a class="nav-link nav-icon"
			href="#" data-bs-toggle="dropdown"> <i class="bi bi-bell"></i> <span
				class="badge bg-primary badge-number">4</span>
		</a>
		<!-- End Notification Icon -->

			<ul
				class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
				<li class="dropdown-header">You have 4 new notifications <a
					href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View
							all</span></a>
				</li>
				<li>
					<hr class="dropdown-divider">
				</li>

				<li class="notification-item"><i
					class="bi bi-exclamation-circle text-warning"></i>
					<div>
						<h4>Lorem Ipsum</h4>
						<p>Quae dolorem earum veritatis oditseno</p>
						<p>30 min. ago</p>
					</div></li>

				<li>
					<hr class="dropdown-divider">
				</li>

				<li class="notification-item"><i
					class="bi bi-x-circle text-danger"></i>
					<div>
						<h4>Atque rerum nesciunt</h4>
						<p>Quae dolorem earum veritatis oditseno</p>
						<p>1 hr. ago</p>
					</div></li>

				<li>
					<hr class="dropdown-divider">
				</li>

				<li class="notification-item"><i
					class="bi bi-check-circle text-success"></i>
					<div>
						<h4>Sit rerum fuga</h4>
						<p>Quae dolorem earum veritatis oditseno</p>
						<p>2 hrs. ago</p>
					</div></li>

				<li>
					<hr class="dropdown-divider">
				</li>

				<li class="notification-item"><i
					class="bi bi-info-circle text-primary"></i>
					<div>
						<h4>Dicta reprehenderit</h4>
						<p>Quae dolorem earum veritatis oditseno</p>
						<p>4 hrs. ago</p>
					</div></li>

				<li>
					<hr class="dropdown-divider">
				</li>
				<li class="dropdown-footer"><a href="#">Show all
						notifications</a></li>

			</ul>
			<!-- End Notification Dropdown Items --></li>
		<!-- End Notification Nav -->
		<!-- 알림 끝 -->

		<!-- 메세지 시작 -->
		<li class="nav-item dropdown"><a class="nav-link nav-icon"
			href="#" data-bs-toggle="dropdown"> <i
				class="bi bi-chat-left-text"></i> <span
				class="badge bg-success badge-number">3</span>
		</a>
		<!-- End Messages Icon -->

			<ul
				class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
				<li class="dropdown-header">You have 3 new messages <a href="#"><span
						class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
				</li>
				<li>
					<hr class="dropdown-divider">
				</li>

				<li class="message-item"><a href="#"> <img
						src="resources/img/messages-1.jpg" alt="" class="rounded-circle">
						<div>
							<h4>Maria Hudson</h4>
							<p>Velit asperiores et ducimus soluta repudiandae labore
								officia est ut...</p>
							<p>4 hrs. ago</p>
						</div>
				</a></li>
				<li>
					<hr class="dropdown-divider">
				</li>

				<li class="message-item"><a href="#"> <img
						src="resources/img/messages-2.jpg" alt="" class="rounded-circle">
						<div>
							<h4>Anna Nelson</h4>
							<p>Velit asperiores et ducimus soluta repudiandae labore
								officia est ut...</p>
							<p>6 hrs. ago</p>
						</div>
				</a></li>
				<li>
					<hr class="dropdown-divider">
				</li>

				<li class="message-item"><a href="#"> <img
						src="resources/img/messages-3.jpg" alt="" class="rounded-circle">
						<div>
							<h4>David Muldon</h4>
							<p>Velit asperiores et ducimus soluta repudiandae labore
								officia est ut...</p>
							<p>8 hrs. ago</p>
						</div>
				</a></li>
				<li>
					<hr class="dropdown-divider">
				</li>

				<li class="dropdown-footer"><a href="#">Show all messages</a></li>

			</ul>
			<!-- End Messages Dropdown Items --></li>
		<!-- End Messages Nav -->
		<!-- 메세지 끝 -->


		<li class="nav-item dropdown pe-3"><a
			class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
			data-bs-toggle="dropdown"> <img
				src="resources/profile/${login.MProfileName}" alt="Profile"
				class="rounded-circle"> <span
				class="d-none d-md-block dropdown-toggle ps-2">${login.MId}</span>
		</a>
		<!-- End Profile Iamge Icon -->

			<ul
				class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
				<li class="dropdown-header">
					<h6>${login.MName}</h6> <span>일반 사용자</span>
				</li>
				<li>
					<hr class="dropdown-divider">
				</li>

				<li><a class="dropdown-item d-flex align-items-center"
					href="mView?mId=${login.MId}"> <i class="bi bi-person"></i> <span>My
							Profile</span>
				</a></li>
				<li>
					<hr class="dropdown-divider">
				</li>

				

				<li><a class="dropdown-item d-flex align-items-center" href="logout">
						<i class="bi bi-box-arrow-right"></i> <span>로그아웃</span>
				</a></li>

			</ul>
			<!-- End Profile Dropdown Items --></li>
		<!-- End Profile Nav -->

	</ul>
</nav>
<!-- End Icons Navigation -->
</c:if>