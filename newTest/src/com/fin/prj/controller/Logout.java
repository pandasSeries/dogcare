package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Logout
{
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value = "logout.action")
	public String logout(HttpSession session)
	{
		session.removeAttribute("memCd");
		session.removeAttribute("memType");
		
		return "redirect:loginform.action";
	}
}
