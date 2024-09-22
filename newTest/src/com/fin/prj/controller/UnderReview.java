package com.fin.prj.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UnderReview
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "underreview.action")
	public String underReview()
	{
		return "/WEB-INF/view/UnderReview.jsp";
	}
}
