package com.jiliang.chen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SliderController extends ApplicationController{

	@RequestMapping(value="/slideA",method = RequestMethod.GET)
	public String slideA(@ModelAttribute("UserAgent") String userAgent){
		return getView("/slideA", userAgent);
	}

	@RequestMapping(value="/slideB",method = RequestMethod.GET)
	public String slideB(@ModelAttribute("UserAgent") String userAgent){
		return getView("/slideB", userAgent);
	}
}
