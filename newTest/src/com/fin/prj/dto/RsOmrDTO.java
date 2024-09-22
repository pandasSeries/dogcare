package com.fin.prj.dto;

public class RsOmrDTO
{
	String rs_omr_cd, omr_cd, pf, rs_omr_date;
	//-- pf : 합불여부
	int score;
	
	
	public String getPf()
	{
		return pf;
	}
	public void setPf(String pf)
	{
		this.pf = pf;
	}
	public String getRs_omr_cd()
	{
		return rs_omr_cd;
	}
	public void setRs_omr_cd(String rs_omr_cd)
	{
		this.rs_omr_cd = rs_omr_cd;
	}
	public String getOmr_cd()
	{
		return omr_cd;
	}
	public void setOmr_cd(String omr_cd)
	{
		this.omr_cd = omr_cd;
	}
	public String getRs_omr_date()
	{
		return rs_omr_date;
	}
	public void setRs_omr_date(String rs_omr_date)
	{
		this.rs_omr_date = rs_omr_date;
	}
	public int getScore()
	{
		return score;
	}
	public void setScore(int score)
	{
		this.score = score;
	}
	
	
}
