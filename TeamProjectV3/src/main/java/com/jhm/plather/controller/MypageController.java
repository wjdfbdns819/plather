package com.jhm.plather.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhm.plather.model.MemberVO;
import com.jhm.plather.service.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/mypage")
@RequiredArgsConstructor
@Controller
public class MypageController {

	protected final MemberService mbService; 
	
	@RequestMapping(value = "/mypage" , method = RequestMethod.GET)
	public String mypage(Model model, HttpSession hSession) {
		// 마이 페이지
		
		MemberVO mbVO = (MemberVO) hSession.getAttribute("MEMBER");
		
		model.addAttribute("MB_PROFILE",mbVO);
		
		return "mypage/mypage";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Model model,HttpSession hSession ) {
		// 마이 페이지 수정 method
		
		// 로그인 세션값을 불러옴
		MemberVO mbVO = (MemberVO) hSession.getAttribute("MEMBER");
		
		// "MB_DETAIL"이라는 변수에 담아서 다시 보냄
		model.addAttribute("MB_DETAIL",mbVO);
		
		return "mypage/update";
	}
	
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Model model, MemberVO mbVO) {
		// 마이 페이지 수정 method
		
		
		log.debug("UPDATE {}",mbVO.toString());
		mbVO = mbService.update(mbVO);
		
		
		model.addAttribute("MDETAIL",mbVO);
		
		return "main";
	}
	
	

}
