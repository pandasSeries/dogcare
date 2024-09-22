package com.fin.prj.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Pass
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "pass.action")
	public String pass()
	{
		return "/WEB-INF/view/Pass.jsp";
	}
}
