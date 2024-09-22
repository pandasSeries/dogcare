package com.fin.prj.dto;

public class WorkDayDTO
{
	String work_day_cd, s_cd, week_cd, week_name, day_reg_date;

	
	public String getWeek_name()
	{
		return week_name;
	}

	public void setWeek_name(String week_name)
	{
		this.week_name = week_name;
	}

	public String getWork_day_cd()
	{
		return work_day_cd;
	}

	public void setWork_day_cd(String work_day_cd)
	{
		this.work_day_cd = work_day_cd;
	}

	public String getS_cd()
	{
		return s_cd;
	}

	public void setS_cd(String s_cd)
	{
		this.s_cd = s_cd;
	}

	public String getWeek_cd()
	{
		return week_cd;
	}

	public void setWeek_cd(String week_cd)
	{
		this.week_cd = week_cd;
	}

	public String getDay_reg_date()
	{
		return day_reg_date;
	}

	public void setDay_reg_date(String day_reg_date)
	{
		this.day_reg_date = day_reg_date;
	}
	
	
}
