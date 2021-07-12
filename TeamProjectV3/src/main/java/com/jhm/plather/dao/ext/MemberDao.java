package com.jhm.plather.dao.ext;

import com.jhm.plather.dao.GenericDao;
import com.jhm.plather.model.MemberVO;

public interface MemberDao extends GenericDao<MemberVO, String>{
	
	// 값이 있으면 update 없으면 insert 수행 method
	public int insertOrUpdate(MemberVO mbVO);
	
	// DB에 프로필 랜덤값 저장
	public int makeRedNum();

	// 닉네임 값으로 조회
	public MemberVO findByNick(String m_nickname);
}
