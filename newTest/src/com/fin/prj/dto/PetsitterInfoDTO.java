package com.fin.prj.dto;

public class PetsitterInfoDTO
{
	private String s_cd, sitting_apply_cd, name, gender, gr, exp_yn, reg_date;
	//-- 펫시터코드, 펫시팅지원코드, 이름, 성별, 등급, 반려경험유무, 승인일자
	private int age, h_pay, perform_count, perform_b_count, perform_m_count, perform_s_count
	//-- 나이, 시급, 수행건수, 대형견 수행건수, 중형견 수행건수, 소형견 수행건수
	, apply_count, matching_count, month_acc_pay;
	//-- 지원건수(단, 선택 마감된 의뢰서 제외 / 매칭된 건 포함), 매칭건수(수행 전단계), 월 단위 누적 정산금
	private double rating_avg;
	//-- 평균평점
	

	public int getMonth_acc_pay()
	{
		return month_acc_pay;
	}
	public void setMonth_acc_pay(int month_acc_pay)
	{
		this.month_acc_pay = month_acc_pay;
	}
	public int getApply_count()
	{
		return apply_count;
	}
	public void setApply_count(int apply_count)
	{
		this.apply_count = apply_count;
	}
	public int getMatching_count()
	{
		return matching_count;
	}
	public void setMatching_count(int matching_count)
	{
		this.matching_count = matching_count;
	}
	public String getReg_date()
	{
		return reg_date;
	}
	public void setReg_date(String reg_date)
	{
		this.reg_date = reg_date;
	}
	public int getPerform_b_count()
	{
		return perform_b_count;
	}
	public void setPerform_b_count(int perform_b_count)
	{
		this.perform_b_count = perform_b_count;
	}
	public int getPerform_m_count()
	{
		return perform_m_count;
	}
	public void setPerform_m_count(int perform_m_count)
	{
		this.perform_m_count = perform_m_count;
	}
	public int getPerform_s_count()
	{
		return perform_s_count;
	}
	public void setPerform_s_count(int perform_s_count)
	{
		this.perform_s_count = perform_s_count;
	}
	public String getSitting_apply_cd()
	{
		return sitting_apply_cd;
	}
	public void setSitting_apply_cd(String sitting_apply_cd)
	{
		this.sitting_apply_cd = sitting_apply_cd;
	}
	public String getExp_yn()
	{
		return exp_yn;
	}
	public void setExp_yn(String exp_yn)
	{
		this.exp_yn = exp_yn;
	}
	public String getS_cd()
	{
		return s_cd;
	}
	public void setS_cd(String s_cd)
	{
		this.s_cd = s_cd;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public int getAge()
	{
		return age;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	public String getGender()
	{
		return gender;
	}
	public void setGender(String gender)
	{
		this.gender = gender;
	}
	public String getGr()
	{
		return gr;
	}
	public void setGr(String gr)
	{
		this.gr = gr;
	}
	public int getH_pay()
	{
		return h_pay;
	}
	public void setH_pay(int h_pay)
	{
		this.h_pay = h_pay;
	}
	public int getPerform_count()
	{
		return perform_count;
	}
	public void setPerform_count(int perform_count)
	{
		this.perform_count = perform_count;
	}
	public double getRating_avg()
	{
		return rating_avg;
	}
	public void setRating_avg(double rating_avg)
	{
		this.rating_avg = rating_avg;
	}
}
