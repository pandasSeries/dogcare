package com.fin.prj.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.IApplyPetsittingDAO;
import com.fin.prj.dao.IApplyPetsittingFormDAO;
import com.fin.prj.dto.ApplyPetsittingDTO;

@Controller
public class ApplyPetsitting
{
	@Autowired
	private SqlSession sqlSession;
	
	@InitBinder
    protected void initBinder(WebDataBinder binder) 
	{
        binder.registerCustomEditor(List.class, "dog", new CustomCollectionEditor(ArrayList.class));
        binder.registerCustomEditor(List.class, "req", new CustomCollectionEditor(ArrayList.class));
    }
	
	@RequestMapping(value="applypetsittingform.action", method=RequestMethod.GET)
	public String applyPetsittingForm(Model model, HttpSession session)
	{
		String result = "";
		
		String memCd = (String)session.getAttribute("memCd");
		String memType = (String)session.getAttribute("memType");
		
		if (memCd == null)
		{
			return "nonmembernotice.action";
		}
		
		IApplyPetsittingFormDAO dao = sqlSession.getMapper(IApplyPetsittingFormDAO.class);
		
		model.addAttribute("myDogList", dao.myDogList(memCd));
		model.addAttribute("memInfo", dao.searchMemInfo(memCd));
		model.addAttribute("reqList", dao.reqList());
		
		result = "/WEB-INF/view/ApplyPetsittingForm.jsp";
		
		return result;
	}
	
	@RequestMapping(value="applypetsitting.action", method=RequestMethod.POST)
	public String applyPetsitting(ApplyPetsittingDTO dto, HttpSession session)
	{
		String result = "";
		
		String memCd = (String)session.getAttribute("memCd");
		String memType = (String)session.getAttribute("memType");
		
		IApplyPetsittingDAO dao = sqlSession.getMapper(IApplyPetsittingDAO.class);
		
		String memdog1 = null;
		String memdog2 = null;
		String memdog3 = null;
		
		ArrayList<String> dogList = dto.getDog();
		
		if (dogList != null) 
		{
	        if (dogList.size() > 0) 
	        {
	            memdog1 = dogList.get(0);
	        }
	        if (dogList.size() > 1) 
	        {
	            memdog2 = dogList.get(1);
	        }
	        if (dogList.size() > 2) 
	        {
	            memdog3 = dogList.get(2);
	        }
	    }
		
		dao.addDogList(memdog1, memdog2, memdog3);
		dao.addPetsittingReq(dao.searchListCd(memdog1), dto);
		
		if (dto.getReq() != null && !dto.getReq().isEmpty())
		{
			for (String req : dto.getReq())
			{
				dao.addReq(dao.searchPetsittingReqCd(dao.searchListCd(memdog1)), req);
			}				
		}
		
		result = "redirect:petsittinglist.action";
		
		return result;
	}
	
}
