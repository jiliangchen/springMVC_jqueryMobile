package com.jiliang.chen.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController extends ApplicationController{
	private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String home(@ModelAttribute("UserAgent") String userAgent){
		return getView("/index", userAgent);
	}
	
	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String index(@ModelAttribute("UserAgent") String userAgent){
		LOGGER.debug("access user agent is " + userAgent);
		return getView("/index", userAgent);
	}
}
