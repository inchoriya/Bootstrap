package com.icia.bts.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MEMBER {
	
	private String mId;			// 아이디
	private String mPw;			// 비밀번호
	private String mName;		// 이름
	private String mBirth;		// 생년월일
	private String mGender;		// 성별
	private String mEmail;		// 이메일
	private String mPhone;		// 연락처
	private String mAddr;		// 주소
	
	private MultipartFile mProfile;		// 업로드 파일
	private String mProfileName;		// 업로드 파일이름
	
}
