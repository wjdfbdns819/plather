package com.jhm.plather.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/playlist")
public class PlayController {

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String list() {

		return "playlist/play_list";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail() {

		return "playlist/play_detail";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {

		return "playlist/play_insert";
	}
}