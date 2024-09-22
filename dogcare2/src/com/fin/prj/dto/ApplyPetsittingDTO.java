package com.fin.prj.dto;

import java.util.ArrayList;

public class ApplyPetsittingDTO
{
   private String memCd, zonecode, class1, class2, class3, addr_detail, workDate, startTime, cf;
   //-- 회원코드, 우편번호, 도로명주소, 상세주소, 예약일자, 예약일시, 참고사항
   private int time;
   //-- 돌봄시간
   private ArrayList<String> dog;
   //-- 맡길 반려견 리스트
   private ArrayList<String> req;
   //-- 요청사항
   public String getMemCd()
   {
      return memCd;
   }
   public void setMemCd(String memCd)
   {
      this.memCd = memCd;
   }
   public String getZonecode()
   {
      return zonecode;
   }
   public void setZonecode(String zonecode)
   {
      this.zonecode = zonecode;
   }
   public String getClass1()
   {
      return class1;
   }
   public void setClass1(String class1)
   {
      this.class1 = class1;
   }
   public String getClass2()
   {
      return class2;
   }
   public void setClass2(String class2)
   {
      this.class2 = class2;
   }
   public String getClass3()
   {
      return class3;
   }
   public void setClass3(String class3)
   {
      this.class3 = class3;
   }
   public String getAddr_detail()
   {
      return addr_detail;
   }
   public void setAddr_detail(String addr_detail)
   {
      this.addr_detail = addr_detail;
   }
   public String getWorkDate()
   {
      return workDate;
   }
   public void setWorkDate(String workDate)
   {
      this.workDate = workDate;
   }
   public String getStartTime()
   {
      return startTime;
   }
   public void setStartTime(String startTime)
   {
      this.startTime = startTime;
   }
   public String getCf()
   {
      return cf;
   }
   public void setCf(String cf)
   {
      this.cf = cf;
   }
   public int getTime()
   {
      return time;
   }
   public void setTime(int time)
   {
      this.time = time;
   }
   public ArrayList<String> getDog()
   {
      return dog;
   }
   public void setDog(ArrayList<String> dog)
   {
      this.dog = dog;
   }
   public ArrayList<String> getReq()
   {
      return req;
   }
   public void setReq(ArrayList<String> req)
   {
      this.req = req;
   }
   
}
