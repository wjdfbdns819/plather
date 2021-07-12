package com.jhm.plather.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/notice")
public class NoticeController {

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String list() {

		return "notice/notice_list";
	}
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail() {

		return "notice/notice_detail";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {

		return "notice/notice_insert";
	}
}