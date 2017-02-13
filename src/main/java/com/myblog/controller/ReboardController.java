package com.myblog.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myblog.service.ReboardService;

@Controller
@RequestMapping(value="/RE")
public class ReboardController {
	Logger logger=Logger.getLogger(this.getClass());
	@Autowired private ReboardService reService;
	
	/**
	 * RE 페이지 이동
	 */
	@RequestMapping(value="/{code}.go")
	public String Reinsert(@PathVariable("code") String code ){
		StringBuilder page = new StringBuilder();
		page.append(".reply.").append(code);
		logger.info("page : "+page);
		return page.toString();
	}
	
	
	
}
