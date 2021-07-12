package com.jhm.plather.service;

import java.util.List;

import com.jhm.plather.model.MemberVO;

public interface MemberService {
	
	// 회원정보 전체 조회
	public List<MemberVO> selectAll();

	//로그인
	public MemberVO login(MemberVO mbVO);
	
	// 회원가입
	public int insert(MemberVO mbVO);
	
	// 회원정보 수정
	public int update(MemberVO mbVO);
	
	
	// 프로필 랜덤값 자동생성
	public int makeRndNum();
}
