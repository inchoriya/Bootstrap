<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>ICIAdmin_회원목록</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/img/favicon.png" rel="icon">
  <link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

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
          <i class="bi bi-menu-button-wide"></i><span>회원 관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          
          <li>
            <a href="joinForm">
              <i class="bi bi-circle"></i><span>회원가입</span>
            </a>
          </li>
          
          <li>
            <a href="loginForm" >
              <i class="bi bi-circle"></i><span>로그인</span>
            </a>
          </li>
          
          <li>
            <a href="mList" class="active">
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
      <h1>회원관리 목록</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">회원관리</li>
          <li class="breadcrumb-item active">회원목록</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-9">

          <div class="card">
            <div class="card-body">
              
              <br/>
              <div>
              	
              	<select id="limit" onchange="test1()">
					<option value="5">5개씩</option>
					<option value="10">10개씩</option>
					<option value="20">20개씩</option>
				</select>
				
				
              	
				<span style="text-align: right;">
				<form action="mSearch" method="GET">
				<!-- 카테고리 -->
				<select name="category">
					<option value="MNAME">이름</option>
					<option value="MID">아이디</option>
					<option value="MPHONE">연락처</option>
				</select>

				<!-- 검색어 -->
				<input type="text" name="keyword" required/>

				<!-- 검색버튼 -->
				<input type="submit" value="검색" /> 
				</form>
				</span>

			</div>
			<br/>
			
              <!-- Table Variants -->
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">아이디</th>
                    <th scope="col">이름</th>
                    <th scope="col">생년월일</th>
                    <th scope="col">성별</th>
                    <th scope="col">연락처</th>
                  </tr>
                </thead>
                <tbody>
                  
                </tbody>
              </table>
              <!-- End Table Variants -->
				<div class="col-lg-12" id="numbering" style="text-align: center;">
				
				<!-- 페이징 처리 -->
				
				</div>
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

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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
<script>
	let page = 1; // 페이지 번호
	let count = 0; // 게시글 갯수
	let limit = 5; // 화면에 출력 개수
	const block = 5; // 화면 출려개수(페이지 버튼 출력개수)

	let list = [];
	let obj = {};
	
	$(function(){
		<c:forEach var="memberList" items="${memberList}" varStatus="i">
		
		obj = {
			"mId" : '${memberList.MId}',
			"mPw" : '${memberList.MPw}',
			"mName" : '${memberList.MName}',
			"mBirth" : '${memberList.MBirth}',
			"mGender" : '${memberList.MGender}',
			"mEmail" : '${memberList.MEmail}',
			"mPhone" : '${memberList.MPhone}',
			"mAddr" : '${memberList.MAddr}',
			"mProfileName" : '${memberList.MProfileName}'				
		}
		
		list[${i.index}] = obj;
		
		</c:forEach>
		count = list.length;
		pagingList(page, list);

	});
	
	
	
	$('#limit').change(function() {

		page = 1;
		limit = Number($('#limit').val());
		pagingList(page, list);

	});

	
	
	$(document).on('click','#numbering a',function(e){
        page = parseInt($(this).data('page'));
        pagingList(page, list);
        return false;
    });

	function pagingList(page, list) {
		
		console.log("count : " + count);

		const maxPage = Math.ceil(count/limit);
		
		if (page > maxPage) {
			if(maxPage==0) {
				maxPage = 1;
			}
			page = maxPage;
		}
		
		
		let startRow = (page - 1) * limit;

		// 끝나는 행 : 5 10 15
		let endRow = page * limit - 1;
		
		if(endRow >= count){
			endRow = count-1;
		}
		
		// 시작하는 페이지
		let startPage = (((Math.ceil(page / block))) - 1) * block + 1;

		// 끝나는 페이지
		let endPage = startPage + block - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}
		
		console.log("page : " + page);
		console.log("startRow : " + startRow);
		console.log("endRow : " + endRow);
		console.log("startPage : " + startPage);
		console.log("endPage : " + endPage);
		console.log("maxPage : " + maxPage);
		console.log("count : " + count);		
		console.log("limit : " + limit);
		
		txt = "";

		for (var i = startRow; i <= endRow; i++) {
		
			txt += "<tr>";
			txt += "<td>" + list[i].mId + "</td>";
			txt += "<td>" + list[i].mName + "</td>";
			txt += "<td>" + list[i].mBirth + "</td>";
			txt += "<td>" + list[i].mGender + "</td>";
			txt += "<td>" + list[i].mPhone + "</td>";
			txt += "</tr>";
		}

		$('.table tbody').empty();
		$('.table tbody').append(txt);
			
		let pageNums = [];
		let prev = (page - 1 < 1 ? 1 : page - 1);              // 이전 페이지
        let next = (page + 1 >= maxPage ? maxPage : page + 1); // 다음페이지
		
		
		// 이전
		if(page<=1){
			pageNums.push(" <button type=\"button\" class=\"btn btn-outline-primary\"><i class=\"bi bi-chevron-compact-left\"></i></button> ");
		} else {
			pageNums.push("<a class='prev' href='#'  data-page="+prev+"> <button type=\"button\" class=\"btn btn-outline-primary\"><i class=\"bi bi-chevron-compact-left\"></i></button> </a>");
		}
        
        // 번호
		for(var i=startPage; i<=endPage ;i++){
            if(page == i){
              pageNums.push(" <button type=\"button\" class=\"btn btn-outline-danger\">" + i + "</button> ");
              continue;
            } 
            pageNums.push("<a class='iNum' href='#' data-page=" + i + "> <button type=\"button\" class=\"btn btn-outline-secondary\">" + i + "</button> </a> ");
          }
        
        // 다음
		if(page>=maxPage){
			pageNums.push(" <button type=\"button\" class=\"btn btn-outline-primary\"><i class=\"bi bi-chevron-compact-right\"></i></button> ");
		} else {
			pageNums.push(" <a class='next' href='#'data-page="+next+"> <button type=\"button\" class=\"btn btn-outline-primary\"><i class=\"bi bi-chevron-compact-right\"></i></button> </a>");
		}
        
		$('#numbering').empty();
		$('#numbering').append(pageNums);
		
		

	}

</script>

</body>

</html>