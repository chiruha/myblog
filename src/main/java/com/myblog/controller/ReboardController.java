package com.myblog.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myblog.service.ReboardService;

@Controller
public class ReboardController {
	Logger logger=Logger.getLogger(this.getClass());
	@Autowired private ReboardService reservice;
	
	@RequestMapping(value="goReinsert.do")
	public String Reinsert(){
		return ".reply.ReboardInsert";
	}
	
	
	
}
