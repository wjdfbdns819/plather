package com.jhm.plather.dao;

import java.util.List;

import com.jhm.plather.model.NoticeDTO;
import com.jhm.plather.model.NoticeVO;

public interface NoticeDao extends GenericDao<NoticeVO, String> {

	public String findByMaxNcode();

	public int updateHit(String n_code);

	public List<NoticeVO> findByTitle(String n_title);

	public List<NoticeVO> findByNick(String text);

	public List<NoticeVO> findByContent(String text);

	public List<NoticeDTO> selectAllView();
	
	public NoticeDTO findByNcode(String n_code);

}
