package com.fin.prj.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Fail
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "fail.action")
	public String fail()
	{
		return "/WEB-INF/view/Fail.jsp";
	}
}
