package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.ILoginDAO;

@Controller
public class Login
{
   @Autowired
   private SqlSession sqlSession;
   
   @RequestMapping(value = "loginform.action")
   public String loginform()
   {
	   return "WEB-INF/view/LogInForm.jsp";
   }
   
   @RequestMapping(value = "login.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String login(String id, String pw, String memType, HttpSession session)
   {
      String result = "";
      
      ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);

      System.out.println(memType);
      System.out.println(id);
      System.out.println(pw);

      
      // myBatis 내부적으로 값이 존재하지않는다면 null 반환
      String memCd = dao.login(id, pw);
      
      // 로그인에 성공했다면 
      if (dao.login(id, pw) != null)
      {
         // 세션에 사용자 정보 저장
         session.setAttribute("memCd",  memCd);
         session.setAttribute("memType", memType);
         
         // 반려인 로그인을 선택했다면
         if (memType.equals("D"))
         {
            //  반려등록이 됐다면
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
         // 펫시터로그인을 선택했다면
         else 
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
      else   // 로그인에 실패했다면
      {
         // Login.jsp 로 가는 loginform.action 있어야함 
         // 에러메세지 출력해주려면 여기에 ? errorMessage=사용자정의 에러
         // → Login.jsp 에서 
         /*
         <c:if test="${param.error == '사용자정의에러'}">
             <p style="color: red;">아이디 또는 비밀번호가 잘못되었습니다.</p>
         </c:if>
         */
         result = "redirect:loginform.action?errorMsg=errMsg";
      }
       
      return result;
   }
}

