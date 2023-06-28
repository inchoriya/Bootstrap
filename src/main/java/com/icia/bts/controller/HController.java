package com.icia.bts.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HController {
		
	// 시작 페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
		String ip = request.getRemoteAddr();
		System.out.println("접속한 ip 주소 : " + ip);
		return "index";
	}

	// index 페이지로
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
		
	// jythonTest : 자이썬 테스트
	@RequestMapping(value = "/jythonTest", method = RequestMethod.GET)
	public String jythonTest() {
		return "index";
	}


}
