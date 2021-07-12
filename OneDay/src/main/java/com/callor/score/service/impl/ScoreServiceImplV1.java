package com.callor.score.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.callor.score.dao.ScoreDao;
import com.callor.score.model.ScoreDTO;
import com.callor.score.service.ScoreService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("scoreserviceV1")
@RequiredArgsConstructor
public class ScoreServiceImplV1 implements ScoreService{
	
	protected final ScoreDao scDao;
	
	@Override
	public List<ScoreDTO> selectViewAll() {
		List<ScoreDTO> scList = scDao.selectViewAll();
		
		log.debug("통합list Service {}", scList.toString());
		return scList;
	}

	@Override
	public List<ScoreDTO> selectView() {
		List<ScoreDTO> scList = scDao.selectView();
		return scList;
	}

}
