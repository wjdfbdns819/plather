package com.callor.score.dao;

import java.util.List;



import com.callor.score.model.ScoreVO;

public interface ScoreDao extends GenericDao<ScoreVO, Long> {

	public List<ScoreVO> selectViewAll();
	
	
}

