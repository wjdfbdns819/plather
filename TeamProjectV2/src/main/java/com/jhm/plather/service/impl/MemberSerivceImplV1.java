package com.jhm.plather.service.impl;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.jhm.plather.dao.ext.MemberDao;
import com.jhm.plather.model.MemberVO;
import com.jhm.plather.service.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@Slf4j
@Service("memberServiceV1")
public class MemberSerivceImplV1 implements MemberService  {

	
	protected final MemberDao mbDao;
	
	@Override
	public List<MemberVO> selectAll() {
		// TODO 회원 정보 전체 조회
		
		List<MemberVO> mbList = mbDao.selectAll();
		
		log.debug("mbService에 있는 회원 정보 {}", mbList.toString());
		
		return mbList;
	}

	@Override
	public int makeRndNum() {
		// TODO 프로필 값 자동생성

		Random rnd = new Random();
		
		int intNum = rnd.nextInt(7);
		
		
		log.debug("랜덤 회원값 : {}", intNum );
		
		return intNum ;
	}

	@Override
	public MemberVO login(MemberVO mbVO) {
		// TODO 로그인
			
		return mbDao.login(mbVO);
	}

	
	@Override
	public int insert(MemberVO mbVO) {
		// TODO 회원가입
		
		log.debug("mbService에 담긴 회원정보 {}" ,mbVO.toString());
		return mbDao.insert(mbVO);
	}

	@Override
	public int update(MemberVO mbVO) {
		// TODO 회원정보 수정
		
		log.debug("mbService에 담긴 수정된 회원정보 {}",mbVO.toString());
		return mbDao.update(mbVO);
	}

	
	

	


}
