package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fin.prj.dao.ILoginDAO;

@Controller
public class TabMovePage
{
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "main.action")
	public String clickHome(HttpSession session)
	{
		String result = "";

		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);

		String memCd = (String) session.getAttribute("memCd");
		String memType = (String) session.getAttribute("memType");

		if (memCd == null)
		{
			result = "redirect:nonmembermain.action";
		} else
		{
			if (memType.equals("D"))
			{
				// 반려인 로그인을 선택했다면
				if (memType.equals("D"))
				{
					// 반려등록이 됐다면
					if (dao.searchMemdog(memCd) != 0)
					{
						result = "redirect:petpartnersmain.action";
					}
					// 반려 등록이 안된 반려인이라면
					else
					{
						result = "redirect:dognull.action";
					}
				}
			} else
			{
				// 위에서 받아온 memCd 를 이용해 검색
				String sApplyCd = dao.searchSApply(memCd);

				// 지원서제출했다면
				if (sApplyCd != null)
				{
					// 지원서 결과가 있다면
					if (dao.searchRes(sApplyCd) != null)
					{
						// 지원서 결과에 있는 ResDTO(getter Res)가 Y → 펫시터가 됐다면 // 여기서 확인했는데 DTO에 private 추가필요
						if (dao.searchRes(sApplyCd).getRes().equalsIgnoreCase("Y"))
						{
							// 결과처리 코드를 가지고 찾은 펫시터 코드가 있다면
							if (dao.searchS(dao.searchRes(sApplyCd).getRes_cd()) != null)
							{
								result = "redirect:petsittermain.action";
							}
							// 없다면 → 합격 but 아직 펫시터 등록 안한 상태
							else
							{
								result = "redirect:pass.action";
							}
						}
						// 결과 N이라면.. → 불합격
						else
						{
							result = "redirect:fail.action";
						}
					}
					// 지원서 결과가 아직 안나왔다면
					else
					{
						result = "redirect:underreview.action";
					}
				}
				// 지원서를 제출하지 않았다면
				else
				{
					result = "redirect:sapplynull.action";
				}
			} // close 펫시터로그인을 선택했다면
		}

		return result;
	}

	@RequestMapping(value = "petsitting.action")
	public String clickPetsitting()
	{
		return "redirect:petsittinglist.action";
	}

	@RequestMapping(value = "mypage.action")
	public String clickMyPage(Model model, HttpSession session)
	{
		String result = "";

		String memCd = (String) session.getAttribute("memCd");
		String memType = (String) session.getAttribute("memType");

		if (memCd == null)
		{
			result = "redirect:nonmembernotice.action";
		} else
		{
			if (memType.equals("D"))
			{
				result = "/WEB-INF/view/MyPagePetPartners.jsp";
			} else
			{
				result = "/WEB-INF/view/MyPagePetSitter.jsp";
			}
		}

		model.addAttribute("memCd", memCd);
		model.addAttribute("memType", memType);

		return result;
	}
}
