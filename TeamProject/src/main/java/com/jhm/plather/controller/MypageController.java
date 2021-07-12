package com.jhm.plather.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/mypage")
public class MypageController {

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String list() {

		return "mypage/mypage";
	}
	
	@RequestMapping(value = {"/", ""}, method = RequestMethod.POST)
	public String mypageAfterUpdate() {

		return "mypage/mypage";
	}


	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String detail() {

		return "mypage/update";
	}
}
