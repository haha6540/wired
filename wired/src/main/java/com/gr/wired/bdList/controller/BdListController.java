package com.gr.wired.bdList.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bdList")
public class BdListController {
	private static final Logger logger
		=LoggerFactory.getLogger(BdListController.class);
	
	@RequestMapping("/bdListmanagement")
	public String  bdList() {
		logger.info("�Խ��� ���");
		
		
		
		return "bdList/bdListmanagement";
	}
	
}
