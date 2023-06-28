package com.icia.bts.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class TEST {
	private int bNum;				// 글번호
	private String bWriter;			// 작성자
	private String bTitle;			// 제목
	private String bContent;		// 내용
	private Date bDate;				// 작성일
	private int bHit;				// 조회수
	
	private MultipartFile bFile;	// 업로드 파일
	private String bFileName;		// 업로드 파일이름
	
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
