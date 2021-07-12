package com.jhm.plather.dao;

import java.util.List;

public interface GenericDao<VO, PK> {

	public List<VO> selectAll(); //전체 조회
	public VO findById(PK pk); // pk값으로 한 정보만 조회
	public List<VO> findBySearch(String search); 
	
	
	public int insert(VO vo); // 정보 추가 
	public int update(VO vo); //  정보 수정
	public int delete(PK pk); //  정보 삭제
	
}
