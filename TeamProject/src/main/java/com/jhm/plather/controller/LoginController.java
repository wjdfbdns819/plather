package com.jhm.plather.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	@RequestMapping(value =  "/join", method = RequestMethod.GET)
	public String join() {

		return "member/join";
	}


}