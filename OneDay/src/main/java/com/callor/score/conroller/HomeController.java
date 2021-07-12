package com.callor.score.conroller;


import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.score.model.ScoreDTO;
import com.callor.score.model.StudentVO;
import com.callor.score.service.ScoreService;
import com.callor.score.service.StudentService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class HomeController {
	
		protected final StudentService stService;
		protected final ScoreService scSerivce;
		
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		List<ScoreDTO> scList = scSerivce.selectViewAll();
		
		log.debug("Controller 통합list {}", scList.toString());
		
		model.addAttribute("SCORE" ,scList);
			
		return "home";
	}
	
}
