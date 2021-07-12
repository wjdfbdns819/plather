package com.jhm.plather.dao.ext;



import com.jhm.plather.dao.GenericDao;
import com.jhm.plather.model.MemberVO;

public interface MemberDao extends GenericDao<MemberVO, String> {
	
	// 테이블에 프로필 랜덤값 저장
	public int makeRndNum();
	
	// 아이디 중복검사
	public int idCheck(String m_id);
	
	// 로그인
	public MemberVO login(MemberVO mbVO);
}
