<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- ======= Sidebar ======= -->
  

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="index">
          <i class="bi bi-grid"></i>
          <span>홈으로</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>회원 관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          
          <li>
            <a href="joinForm">
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
