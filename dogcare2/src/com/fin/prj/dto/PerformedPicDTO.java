package com.fin.prj.dto;

public class PerformedPicDTO
{
	String performed_pic_cd, perform_cd, pic_cd, performed_pic_date, pic_memo, pic_path;


	public String getPic_memo()
	{
		return pic_memo;
	}

	public void setPic_memo(String pic_memo)
	{
		this.pic_memo = pic_memo;
	}

	public String getPic_path()
	{
		return pic_path;
	}

	public void setPic_path(String pic_path)
	{
		this.pic_path = pic_path;
	}

	public String getPerformed_pic_cd()
	{
		return performed_pic_cd;
	}

	public void setPerformed_pic_cd(String performed_pic_cd)
	{
		this.performed_pic_cd = performed_pic_cd;
	}

	public String getPerform_cd()
	{
		return perform_cd;
	}

	public void setPerform_cd(String perform_cd)
	{
		this.perform_cd = perform_cd;
	}

	public String getPic_cd()
	{
		return pic_cd;
	}

	public void setPic_cd(String pic_cd)
	{
		this.pic_cd = pic_cd;
	}

	public String getPerformed_pic_date()
	{
		return performed_pic_date;
	}

	public void setPerformed_pic_date(String performed_pic_date)
	{
		this.performed_pic_date = performed_pic_date;
	}
	
	
}
