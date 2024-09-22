package com.fin.prj.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fin.prj.dao.IDogDAO;
import com.fin.prj.dto.DogDTO;

@Controller
public class DogController
{
	@Autowired
	private HttpSession session;

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/doginsertform.action")
	public String dogInsertForm(Model model)
	{
		IDogDAO dao = sqlSession.getMapper(IDogDAO.class);
		model.addAttribute("breedList", dao.breedList());
		model.addAttribute("fooList", dao.fooList());
		model.addAttribute("actiList", dao.actiList());
		model.addAttribute("sizList", dao.sizList());
		model.addAttribute("dssList", dao.dssList());
		model.addAttribute("splList", dao.splList());
		model.addAttribute("spltyList", dao.spltyList());
		model.addAttribute("feedList", dao.feedList());

		return "/WEB-INF/view/DogInsertForm.jsp";
	}

	@RequestMapping("/statisticform.action")
	public String statisticForm(Model model)
	{

		return "/WEB-INF/view/Statistic.jsp";
	}

	@RequestMapping("/dogcodeinsertform.action")
	public String dogCodeInsert(Model model)
	{

		return "/WEB-INF/view/DogCodeInsertForm.jsp";
	}

	@RequestMapping("/dogcodeinsert.action")
	public String dogCodeInsert(HttpSession session, @RequestParam Map<String, String> map)
	{
		IDogDAO dao = sqlSession.getMapper(IDogDAO.class);
		String mem_cd = (String) session.getAttribute("memCd");
		if (dao.memDogSearch(map) != 0)
		{
			if (dao.memDogCount(map, mem_cd) >= 1)
			{
				session.setAttribute("error3", "반려견을 중복하여 등록 불가합니다!");
				return "redirect:dogcodeinsertform.action";
			}
			dao.memDogSearchInsert(map, mem_cd);
		} else
		{

			session.setAttribute("error2", "코드와 아이디를 확인해주세요!");
			return "redirect:dogcodeinsertform.action";
		}

		return "redirect:memdogmanagement.action";
	}

	@RequestMapping("/doginsert.action")
	public String dogInsert(@RequestParam(required = false) List<String> feed_cd, @RequestParam(required = false) List<String> disease_cd, @RequestParam(required = false) List<String> spl_cd, @RequestParam Map<String, String> map, Model model, HttpSession session)

	{

		String mem_cd = (String) session.getAttribute("memCd");

		IDogDAO dao = sqlSession.getMapper(IDogDAO.class);

		System.out.println(map);

		System.out.println(spl_cd);
		System.out.println(disease_cd);
		System.out.println(feed_cd);

		if (dao.dogCount(mem_cd) >= 3)
		{
			session.setAttribute("error", "강아지는 최대 3마리 등록 가능합니다!");
			return "redirect:dogmanagement.action";
		}

		DogDTO dto = new DogDTO();

		dao.dogInsert(map, mem_cd);

		String id = dao.searchId(mem_cd);

		map.put("id", id);
		if (feed_cd != null)
		{
			// 0 1
			for (int i = 0; i < feed_cd.size(); i++)
			{

				map.put("feed_cd" + (i + 1), feed_cd.get(i));

			}
			// 2
			for (int i = feed_cd.size(); i < 3; i++)
			{
				map.put("feed_cd" + (i + 1), "81");
			}
			dao.my_feed_Insert(map);
		} else
		{
			for (int i = 0; i < 3; i++)
			{
				map.put("feed_cd" + (i + 1), "81");
			}
			dao.my_feed_Insert(map);
		}

		if (spl_cd != null)
		{
			for (int i = 0; i < spl_cd.size(); i++)
			{

				map.put("spl_cd" + (i + 1), spl_cd.get(i));

			}
			for (int i = spl_cd.size(); i < 3; i++)
			{
				map.put("spl_cd" + (i + 1), "999");
			}
			dao.my_spl_Insert(map);
		} else
		{
			for (int i = 0; i < 3; i++)
			{
				map.put("spl_cd" + (i + 1), "999");
			}
			dao.my_spl_Insert(map);
		}

		if (disease_cd != null)
		{
			for (int i = 0; i < disease_cd.size(); i++)
			{

				map.put("disease_cd" + (i + 1), disease_cd.get(i));

			}

			dao.my_dss_Insert(map);

		} else
		{
			for (int i = 0; i < 3; i++)
			{
				map.put("disease_cd" + (i + 1), "999");
			}
			dao.my_dss_Insert(map);
		}

		if (map.get("filePath") == null || map.get("filePath").toString().isEmpty())
		{
			map.put("filePath", "null.jpg");
		}

		String originalPath = map.get("filePath");

		// 슬래시로 변환된 경로 (필요시)
		String convertedPath = originalPath.replace("\\", "/");

		// 파일명 추출 (확장자 포함)
		String fileNameWithExtension = convertedPath.substring(convertedPath.lastIndexOf("/") + 1);

		map.put("filePath", fileNameWithExtension);

		dao.picInsert(map, mem_cd);

		String pid = dao.searchPic(mem_cd);
		map.put("pid", pid);

		dao.profile_picInsert(map);

		System.out.println(map);
		dao.memDogInsert(map, mem_cd);
		System.out.println(map);

		return "redirect:dogmanagement.action";
	}

	@RequestMapping("/dogmanagement.action")
	public String DogManageMent(Model model)
	{
		IDogDAO dao = sqlSession.getMapper(IDogDAO.class);
		String mem_cd = (String) session.getAttribute("memCd");

		model.addAttribute("dogList", dao.dogList(mem_cd));
		return "/WEB-INF/view/DogManagement.jsp";
	}

	@RequestMapping("/dogUpdateForm.action")
	public String dogUpdateForm(Model model, @RequestParam Map<String, String> map)
	{
		IDogDAO dao = sqlSession.getMapper(IDogDAO.class);
		System.out.println(map.get("dog_cd"));

		model.addAttribute("breedList", dao.breedList());
		model.addAttribute("fooList", dao.fooList());
		model.addAttribute("actiList", dao.actiList());
		model.addAttribute("sizList", dao.sizList());
		model.addAttribute("dssList", dao.dssList());
		model.addAttribute("splList", dao.splList());
		model.addAttribute("spltyList", dao.spltyList());
		model.addAttribute("feedList", dao.feedList());
		model.addAttribute("p", map.get("P2"));
		return "/WEB-INF/view/DogUpdateForm.jsp";
	}

	@RequestMapping("/dogupdate.action")
	public String dogUpdate(@RequestParam Map<String, String> map, @RequestParam(required = false) List<String> feed_cd, @RequestParam(required = false) List<String> disease_cd, @RequestParam(required = false) List<String> spl_cd)
	{
		String mem_cd = (String) session.getAttribute("memCd");
		IDogDAO dao = sqlSession.getMapper(IDogDAO.class);
		

		if (spl_cd != null)
		{
			for (int i = 0; i < spl_cd.size(); i++)
			{

				map.put("spl_cd" + (i + 1), spl_cd.get(i));

			}
			for (int i = spl_cd.size(); i < 3; i++)
			{
				map.put("spl_cd" + (i + 1), "999");
			}
			dao.my_spl_Update(map);
		} else
		{
			for (int i = 0; i < 3; i++)
			{
				map.put("spl_cd" + (i + 1), "999");
			}
			dao.my_spl_Update(map);
		}

		if (feed_cd != null)
		{
			for (int i = 0; i < feed_cd.size(); i++)
			{

				map.put("feed_cd" + (i + 1), feed_cd.get(i));

			}
			for (int i = feed_cd.size(); i < 3; i++)
			{
				map.put("feed_cd" + (i + 1), "81");
			}
			dao.my_feed_Update(map);
		} else
		{
			for (int i = 0; i < 3; i++)
			{
				map.put("feed_cd" + (i + 1), "81");
			}
			dao.my_feed_Update(map);
		}

		if (disease_cd != null)
		{
			for (int i = 0; i < disease_cd.size(); i++)
			{

				map.put("disease_cd" + (i + 1), disease_cd.get(i));

			}

			dao.my_dss_Update(map);

		} else
		{
			for (int i = 0; i < 3; i++)
			{
				map.put("disease_cd" + (i + 1), "999");
			}
			dao.my_dss_Update(map);
		}
		String originalPath = map.get("filePath");
		
		// 슬래시로 변환된 경로 (필요시)
		String convertedPath = originalPath.replace("\\", "/");

		// 파일명 추출 (확장자 포함)
		String fileNameWithExtension = convertedPath.substring(convertedPath.lastIndexOf("/") + 1);

		map.put("filePath", fileNameWithExtension);
		
	/*
	 * String originalPath = map.get("filePath");

		// 슬래시로 변환된 경로 (필요시)
		String convertedPath = originalPath.replace("\\", "/");

		// 파일명 추출 (확장자 포함)
		String fileNameWithExtension = convertedPath.substring(convertedPath.lastIndexOf("/") + 1);

		map.put("filePath", fileNameWithExtension);

		dao.picInsert(map, mem_cd);

		String pid = dao.searchPic(mem_cd);
		map.put("pid", pid);

		dao.profile_picInsert(map);
	 * */

		
		
		System.out.println(map);
		System.out.println("------------------");
		String pid = dao.profileSearch(map);
		System.out.println(pid);
		System.out.println(map);
		
		dao.picUpdate(map, pid);
		
		
		dao.dogUpdate(map);

		return "redirect:dogmanagement.action";
	}

	@RequestMapping("/dogDelete.action")
	public String dogDelete(@RequestParam Map<String, String> map)
	{
		IDogDAO dao = sqlSession.getMapper(IDogDAO.class);

		dao.my_feed_Delete(map);
		dao.my_spl_Delete(map);
		dao.my_dss_Delete(map);
		dao.profile_picDelete(map);

		dao.memDogDelete(map);
		dao.dogDelete(map);

		return "redirect:dogmanagement.action";
	}

	@RequestMapping("/dogsubmanagement.action")
	public String dogSubManagement(HttpServletRequest request, Model model, @RequestParam Map<String, String> map)
	{

		IDogDAO dao = sqlSession.getMapper(IDogDAO.class);
		System.out.println(request.getParameter("dog_cd"));

		map.put("dog_cd", (String) request.getParameter("dog_cd"));
		System.out.println(map);
		model.addAttribute("dogSubList", dao.dogSubList(request.getParameter("dog_cd")));
		model.addAttribute("my_spl_cd_Search", dao.my_spl_cd_Search(map));
		model.addAttribute("my_spl_cd2_Search", dao.my_spl_cd2_Search(map));
		model.addAttribute("my_spl_cd3_Search", dao.my_spl_cd3_Search(map));
		model.addAttribute("my_dss_Search", dao.my_dss_Search(map));
		model.addAttribute("my_feed_Search", dao.my_feed_Search(map));
		model.addAttribute("p", map.get("P2"));
		return "/WEB-INF/view/DogSubManagement.jsp";
	}

	@RequestMapping("/memdogmanagement.action")
	public String memDogManagement(Model model, Map<String, String> map)
	{

		String mem_cd = (String) session.getAttribute("memCd");
		IDogDAO dao = sqlSession.getMapper(IDogDAO.class);
		model.addAttribute("memDogList", dao.memDogList(map, mem_cd));
		return "/WEB-INF/view/MemDogManagement.jsp";
	}

}
