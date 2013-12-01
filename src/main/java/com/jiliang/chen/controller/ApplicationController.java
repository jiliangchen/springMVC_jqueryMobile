package com.jiliang.chen.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.MessageSource;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * 前端控制器基类
 * 
 */

@SessionAttributes("UserAgent")
public class ApplicationController {
	public static final String COMMON_DATE_FORMAT = "yyyy-MM-dd";

	@Autowired
	private MessageSource messageSource;

	protected String i18n(String message) {
		return messageSource.getMessage(message, null, null);
	}

	protected String i18n(String message, Object[] args, Locale locale) {
		return messageSource.getMessage(message, args, locale);
	}

	protected MessageSource getMessageSource() {
		return messageSource;
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(COMMON_DATE_FORMAT);
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}
	
	protected String getView(String uri,String userAgent){
		return userAgent + uri;
	}
	
	protected String redirectTo(String uri){
		return "redirect:" + uri;
	}
}
