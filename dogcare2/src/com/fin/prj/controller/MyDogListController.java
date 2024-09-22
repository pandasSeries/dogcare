package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.IMyDogListDAO;

@Controller
public class MyDogListController 
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "petpartnersmain.action", method = RequestMethod.GET)
	public String MyDogList(Model model,String dog_cd, HttpSession session) // model일 필요할때는 다음 페이지에 뿌려야 할때다. 그냥 insert 만 하면 안뿌려도 됨
	{
		String result="";
		
		String attrStr = "";
		
		int attrInt=0;
		
		String memCd = (String)session.getAttribute("memCd");
		String memType = (String)session.getAttribute("memType");
		
		model.addAttribute("attrInt", attrInt);
		
		IMyDogListDAO dao = sqlSession.getMapper(IMyDogListDAO.class);
		
		model.addAttribute("mydoglist",dao.list(memCd));
		
		
		
		if(dog_cd == null)
		{
			
			model.addAttribute("doginfo",dao.doginfo(dao.list(memCd).get(0).getDog_cd()));
			model.addAttribute("cltime",dao.cltime(dao.list(memCd).get(0).getDog_cd()));
			model.addAttribute("memdoglist",dao.memdoglist(dao.list(memCd).get(0).getDog_cd()));
			model.addAttribute("memdogCd", dao.memdogCd(memCd, dao.list(memCd).get(0).getDog_cd()));
			
		}
		else
		{
			model.addAttribute("doginfo",dao.doginfo(dog_cd));
			model.addAttribute("cltime",dao.cltime(dog_cd));
			model.addAttribute("memdoglist",dao.memdoglist(dog_cd));
			model.addAttribute("memdogCd", dao.memdogCd(memCd, dog_cd));
		}
		
		
		
		
		model.addAttribute("mempicList", dao.mempicList(memCd));
		
		result= "/WEB-INF/view/PetPartnersMain.jsp";
		
		return result;
	}
	/*
	@RequestMapping(value = "logform.action",method = RequestMethod.GET)
	public String logForm()
	{
		String result=""; 
		
		//IMyDogListDAO dao = sqlSession.getMapper(IMyDogListDAO.class);
		
		result= "/WEB-INF/view/DailyLogForm.jsp";
		return result;
	}
	*/
	
	
	
	// 여기서 delete나 upgrade 할건 없나
}
