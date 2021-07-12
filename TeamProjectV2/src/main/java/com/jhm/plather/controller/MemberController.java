package com.jhm.plather.controller;



import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jhm.plather.model.MemberVO;
import com.jhm.plather.service.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/member")
@RequiredArgsConstructor
public class MemberController {

	 protected final MemberService mbService;
	 
	 @RequestMapping(value = "/login", method = RequestMethod.GET)
	 public	String login(Model model) {
		 
		
		 
		 return "member/login";
	 }
	 
	 @RequestMapping(value = "/login", method = RequestMethod.POST)
	 public String login(HttpSession hSession, MemberVO mbVO) {
		 
		 log.debug("전달된 값 {}", mbVO.toString());
		 
		 mbVO = mbService.login(mbVO);
		 
		 if(mbVO == null ) {
			 
			 return "redirect:/member/login";
			 
		 }
		 
		 hSession.setAttribute("MBVO", mbVO);
		 
		 return "redirect:/";
	 }

		@RequestMapping(value="/insert",method=RequestMethod.GET)
		public String insert(Model model) {
			
			MemberVO mbVO = new MemberVO();
			mbVO.setM_profile(mbService.makeRndNum());
			
			log.debug("controller에 담긴 회원정보 {}", mbVO.toString());
			
			model.addAttribute("MB",mbVO);

			return "member/insert";
			
		}

		@RequestMapping(value="/insert",method=RequestMethod.POST)
		public String insert(MemberVO mbVO, Model model) {
			
			log.debug("Req 회원정보 : {}", mbVO.toString());
			
			mbService.insert(mbVO);
			
			return "member/insert";
		}
		


		@RequestMapping(value="/update",method=RequestMethod.GET)
		public String update(Model model) {
			
			MemberVO mbVO = new MemberVO();
			
			log.debug("controller에 담긴 회원정보 {}", mbVO.toString());
			
			model.addAttribute("MB",mbVO);

			return "member/update";
			
		}
		
		@RequestMapping(value="/update",method=RequestMethod.POST)
		public String update(MemberVO mbVO, Model model) {
			
			log.debug("controller에 담긴 회원정보 {}", mbVO.toString());
			
			mbService.update(mbVO);

			return "member/update";
			
		}


			
	 
}
