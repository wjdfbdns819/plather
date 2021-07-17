package com.jhm.plather.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhm.plather.model.MemberVO;
import com.jhm.plather.model.NoticeDTO;
import com.jhm.plather.model.NoticeVO;
import com.jhm.plather.service.MemberService;
import com.jhm.plather.service.NoticeService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class HomeController {

	protected final NoticeService nService;
	protected final MemberService mbService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login(Model model) {
		// 로그인 method

		// 모델에 값을 담아서 보냄
		model.addAttribute("BODY", "LOGIN");

		return "home";
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String login(Model model, MemberVO mbVO, HttpSession hSession) {
		// 로그인 method
		// web에서 로그인 값을 받아서 처리 수행 method

		mbVO = mbService.login(mbVO, model);

		// mbVO로 null 값이 넘어오면(= 값이 없으면)
		if (mbVO == null) {

			model.addAttribute("BODY", "LOGIN");

			// 로그인 실패 : 로그인 화면으로 다시 보냄
			return "home";

		} else {

			// 사용자 ID 정상, 비밀번호 확인 정상
			// HttpSession에 사용자 정보가 담긴 memberVO를
			// 속성으로 세팅한다
			hSession.setAttribute("MEMBER", mbVO);

			// 로그인 성공 : 메인 화면으로 보냄
			return "redirect:/main";
		}
	}

//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//
//		return "member/login";
//	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String mainPage(NoticeDTO noticeDTO, Model model) {

		List<NoticeVO> ntList = nService.selectAll();
		model.addAttribute("NTLIST", ntList);
		return "main";
	}

}