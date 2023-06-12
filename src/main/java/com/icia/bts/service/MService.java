package com.icia.bts.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.bts.dao.MDAO;
import com.icia.bts.dto.MEMBER;
import com.icia.bts.dto.SEARCH;

@Service
public class MService {

	@Autowired
	private MDAO mdao;

	@Autowired
	private BCryptPasswordEncoder pwEnc;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;

	
	public String idCheck(String mId) {
		if (mdao.idCheck(mId) == null) {
			return "OK";
		} else {
			return "NO";
		}
	}

	public ModelAndView mJoin(MEMBER member, HttpServletRequest request) {
		mav = new ModelAndView();
		
		String savePath = request.getServletContext().getRealPath("src/main/webapp/resources/profile/").replace(".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\", "");
		MultipartFile mProfile = member.getMProfile();
		String mProfileName = null;

		if (!mProfile.isEmpty()) {
			String uuid = UUID.randomUUID().toString().substring(0, 8);
			String fileName = mProfile.getOriginalFilename();
			mProfileName = uuid + "_" + fileName;
			member.setMProfileName(mProfileName);
		}

		member.setMPw(pwEnc.encode(member.getMPw()));

		try {
			mdao.mJoin(member);
			mProfile.transferTo(new File(savePath + mProfileName));
			mav.setViewName("index");
		} catch (Exception e) {
			mav.setViewName("member/join");
			e.printStackTrace();
		}

		return mav;
	}

	public ModelAndView mLogin(MEMBER member, boolean remember, HttpServletRequest request, HttpServletResponse response) {
		mav = new ModelAndView();
		System.out.println("로그인 : " + remember);
		String mPw = member.getMPw();
		MEMBER loginMember = mdao.mView(member.getMId());
		
		
		String encPw = loginMember.getMPw();
		
		
		if (pwEnc.matches(mPw, encPw)) {
			session.setAttribute("login", loginMember);
			
//			if(remember) {
//				Cookie cookieId = new Cookie("cookieId", member.getMId());
//				cookieId.setMaxAge(60 * 60 * 24);
//				response.addCookie(cookieId);
//			}
			
			mav.setViewName("index");
		} else {
			mav.setViewName("member/login");
		}
		
		return mav;
	}


	public ModelAndView mList() {
		mav = new ModelAndView();
		
		List<MEMBER> memberList = mdao.mList();
		
		mav.addObject("memberList", memberList);
		mav.setViewName("member/list");
		
		return mav;
	}

	public ModelAndView mSearch(SEARCH search) {
		mav = new ModelAndView();
		
		List<MEMBER> memberList = mdao.mSearch(search);
		
		mav.addObject("memberList", memberList);
		mav.setViewName("member/list");
		
		return mav;
	}

	public ModelAndView mView(String mId) {
		mav = new ModelAndView();
		
		MEMBER member = mdao.mView(mId);
		
		mav.addObject("view", member);
		mav.setViewName("member/view");
		
		return mav;
	}

	public ModelAndView mModify(MEMBER member, HttpServletRequest request) {
		mav = new ModelAndView();
		
		String savePath = request.getServletContext().getRealPath("src/main/webapp/resources/profile/").replace(".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\", "");
		
		if(!member.getMProfileName().isEmpty()) {

			File deleteFile = new File(savePath + member.getMProfileName());

			if (deleteFile.exists()) {
				deleteFile.delete();
			}
		}
		
		
		MultipartFile mProfile = member.getMProfile();
		String mProfileName = null;

		if (!mProfile.isEmpty()) {
			String uuid = UUID.randomUUID().toString().substring(0, 8);
			String fileName = mProfile.getOriginalFilename();
			mProfileName = uuid + "_" + fileName;
			member.setMProfileName(mProfileName);
		}

		try {
			mdao.mModify(member);
			mProfile.transferTo(new File(savePath + mProfileName));
			mav.setViewName("redirect:/mView?mId=" + member.getMId());
		} catch (Exception e) {
			mav.setViewName("redirect:/mList");
			e.printStackTrace();
		}

		return mav;
	}

	public String checkPw(MEMBER member) {
		String mPw = member.getMPw();
		MEMBER checkMember = mdao.mView(member.getMId());
		
		
		String encPw = checkMember.getMPw();
		
		
		if (pwEnc.matches(mPw, encPw)) {
			return "OK";
		} else {
			return "NO";
		}		
		
	}

	public ModelAndView changePw(MEMBER member) {
		mav = new ModelAndView();
		member.setMPw(pwEnc.encode(member.getMPw()));
		
		try {
			mdao.changePw(member);
			session.invalidate();
			mav.setViewName("member/login");
		} catch(Exception e) {
			e.printStackTrace();
			mav.setViewName("index");
		}
		
		return mav;
	}

	public ModelAndView mDelete(MEMBER member, HttpServletRequest request) {
		mav = new ModelAndView();
			
		try {
			mdao.mDelete(member);
			
			String savePath = request.getServletContext().getRealPath("src/main/webapp/resources/profile/").replace(".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\", "");
			
			if(!member.getMProfileName().isEmpty()) {

				File deleteFile = new File(savePath + member.getMProfileName());

				if (deleteFile.exists()) {
					deleteFile.delete();
				}
			}
			
			session.invalidate();
			mav.setViewName("index");
		} catch(Exception e) {
			e.printStackTrace();
			mav.setViewName("redirect:/mView?mId=" + member.getMId());
		}
		return mav;
	}

}
