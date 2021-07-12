package com.callor.score.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class StudentController {

	
	@RequestMapping(value = "/student", method = RequestMethod.GET)
	public String Studentlist() {
		
		return "student/list";
	}
}