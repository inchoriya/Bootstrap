package com.icia.bts.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.bts.dto.MEMBER;
import com.icia.bts.dto.SEARCH;
import com.icia.bts.service.MService;

@Controller
public class MController {

	@Autowired
	private MService msvc;

	@Autowired
	private HttpSession session;

	// joinForm : 회원가입 페이지로
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "member/join";
	}

	// idCheck : 아이디 중복 체크
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	public @ResponseBody String idCheck(@RequestParam("mId") String mId) {
		return msvc.idCheck(mId);
	}

	// mJoin : 회원가입
	@RequestMapping(value = "/mJoin", method = RequestMethod.POST)
	public ModelAndView mJoin(@ModelAttribute MEMBER member, HttpServletRequest request) {
		return msvc.mJoin(member, request);
	}

	// loginForm : 로그인 페이지 이동
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm(HttpServletRequest request) {

		Cookie[] cookies = request.getCookies();

		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("cookieId")) {
				session.setAttribute("loginId", cookie.getValue());
				System.out.println("쿠키값 확인 : " + cookie.getValue());
				return "index";
			}
		}

		return "member/login";
	}

	// mLogin : 로그인
	@RequestMapping(value = "/mLogin", method = RequestMethod.POST)
	public ModelAndView mLogin(@ModelAttribute MEMBER member,
			@RequestParam(value = "remember", required = false, defaultValue = "false") boolean remember,
			HttpServletRequest request, HttpServletResponse response) {
		return msvc.mLogin(member, remember, request, response);
	}
	
	// logout : 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		session.invalidate();
		
//		Cookie[] cookies = request.getCookies();
//
//		for (Cookie cookie : cookies) {
//			if (cookie.getName().equals("cookieId")) {
//				System.out.println("쿠키 이름 : " + cookie.getName());
//				System.out.println("쿠키 값 : " + cookie.getValue());
//				
//				
//				cookie.setMaxAge(0);
//				System.out.println(cookie.getName()+ "의 유효기간 : " + cookie.getMaxAge());
//				
//			}
//		}
		
		
		return "index";
	}

	// mlist : 회원목록
	@RequestMapping(value = "/mList", method = RequestMethod.GET)
	public ModelAndView mList() {
		return msvc.mList();
	}
	
	// mSearch : 검색목록
	@RequestMapping(value = "/mSearch", method = RequestMethod.GET)
	public ModelAndView mSearch(@ModelAttribute SEARCH search) {
		return msvc.mSearch(search);
	}
	
	// mView : 회원상세보기
	@RequestMapping(value = "/mView", method = RequestMethod.GET)
	public ModelAndView mView(@RequestParam("mId")String mId){
		
		if(mId.equals(null) || mId.equals("")) {
			mId = "icia";
		}
		
		return msvc.mView(mId);
	}
	
	// mModify : 회원수정
	@RequestMapping(value = "/mModify", method = RequestMethod.POST)
	public ModelAndView mModify(@ModelAttribute MEMBER member, HttpServletRequest request) {
		return msvc.mModify(member, request);
	}
	
	// checkPw : 비밀번호 변경을 위한 현재 비밀번호 확인
	@RequestMapping(value = "/checkPw", method = RequestMethod.POST)
	public @ResponseBody String checkPw(@ModelAttribute MEMBER member) {
		return msvc.checkPw(member);
	}
	
	// changePw : 비밀번호 변경
	@RequestMapping(value = "/changePw", method = RequestMethod.POST)
	public ModelAndView changePw(@ModelAttribute MEMBER member) {
		return msvc.changePw(member);
	}
	
	// mDelete : 회원탈퇴
	@RequestMapping(value = "/mDelete", method = RequestMethod.GET)
	public ModelAndView mDelete(@ModelAttribute MEMBER member, HttpServletRequest request) {
		return msvc.mDelete(member, request);
	}
	
}









