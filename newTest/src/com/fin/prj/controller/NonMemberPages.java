package com.fin.prj.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NonMemberPages
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "nonmembermain.action")
	public String nonMemberHome()
	{
		return "/WEB-INF/view/Home.jsp";
	}
	
	@RequestMapping(value = "nonmembernotice.action")
	public String nonMemberNotice()
	{
		return "/WEB-INF/view/NonMemberNotice.jsp";
	}
}
