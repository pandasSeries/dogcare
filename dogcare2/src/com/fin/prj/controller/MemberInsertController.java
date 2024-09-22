package com.fin.prj.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.IMemberInsertDAO;
import com.fin.prj.dto.MemInfoDTO;

@Controller
public class MemberInsertController
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="memberinsertform.action")
	public String memberInsertForm()
	{
		String result = null;
		
		result = "/WEB-INF/view/CreateAccount.jsp";
		
		return result;
	}
	
	
	@RequestMapping(value="memberinsert.action", method=RequestMethod.POST)
	public String memberInsert(MemInfoDTO dto, Model model)
	{
		String result = null;
		
		IMemberInsertDAO dao = sqlSession.getMapper(IMemberInsertDAO.class);
		
		// 회원 코드 생성
		dao.newMemCd();
		
		//  및 변수에 담기
		String mem_cd = dao.getMemCd(); 
		
		//생성된 회원 코드 dto에 담기
		dto.setMem_cd(mem_cd);
		
		// 회원정보 입력하기
		dao.add(dto);
		
		// 회원가입 완료 세션
		// login.action 에  memType, id, pw 처리해서 보네주기
		
		model.addAttribute("memType", "D");
		model.addAttribute("id", dto.getEmail());
		model.addAttribute("pw", dto.getPassword());
		
		result = "redirect:login.action";
		
		return result;
	}

}
