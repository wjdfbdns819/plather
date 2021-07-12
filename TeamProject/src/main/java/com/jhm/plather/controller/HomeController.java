package com.jhm.plather.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class HomeController {
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "member/login";
	}
	@RequestMapping(value="/main",method = RequestMethod.POST)
	public String mainPage(Locale locale, Model model) {
	
		return "main";
	}
	
}
