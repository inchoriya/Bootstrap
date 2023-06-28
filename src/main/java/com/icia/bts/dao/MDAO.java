package com.icia.bts.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.bts.dto.MEMBER;
import com.icia.bts.dto.PAGING;
import com.icia.bts.dto.SEARCH;
import com.icia.bts.dto.TEST;

@Repository
public class MDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public String idCheck(String mId) {
		return sql.selectOne("Member.idCheck", mId);
	}

	public void mJoin(MEMBER member) {
		sql.insert("Member.mJoin", member);
	}

	public String mLogin(String mId) {
		return sql.selectOne("Member.mLogin", mId);
	}

	public List<MEMBER> mList() {
		return sql.selectList("Member.mList");
	}


	public List<MEMBER> mSearch(SEARCH search) {
		return sql.selectList("Member.mSearch", search);
	}

	public MEMBER mView(String mId) {
		return sql.selectOne("Member.mView", mId);
	}

	public void mModify(MEMBER member) {
		sql.update("Member.mModify", member);		
	}

	public void changePw(MEMBER member) {
		sql.update("Member.changePw", member);
	}

	public void mDelete(MEMBER member) {
		sql.delete("Member.mDelete", member);
	}

	public List<TEST> joinTest(MEMBER member) {
		return sql.selectList("Member.joinTest", member);
	}


}
