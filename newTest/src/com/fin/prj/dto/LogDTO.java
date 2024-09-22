package com.fin.prj.dto;

public class LogDTO
{
	//private String diary_cd, memdog_cd, diary_title, diary_content, diary_date, diary_wr_date;
	private String memdog_cd, mem_cd;
	
	private String feed_name, fd_cd, feed_cd, fd_amount, fd_date, fd_wr_date, food_selected;
	
	private String spl_ty_cd, spl_ty_name, spl_cd, spl_name, spl_take_cd, spl_take_date, dog_cd, spl_brand;
	
	private String snack_cd, snack_name, snack_amount, snack_date, snack_wr_date;
	
	private String walk_cd, walk_start_date, walk_end_date, walk_wr_date;
	
	private String selected_date;	// 일단 들고 있어봐라 fd_date랑 이런것들에 넣을 용도로 사용
	
	private String bath_cd, bath_date, bath_wr_date, bathcheck; // bathCheck는 컨트롤러단에서 활용
	
	private String spec_cd, spec_content, spec_date, spec_wr_date;
	
	
	
	
	


	public String getBathcheck()
	{
		return bathcheck;
	}

	public void setBathcheck(String bathcheck) 
	{
        this.bathcheck = bathcheck;
    }

	public String getBath_cd()
	{
		return bath_cd;
	}

	public void setBath_cd(String bath_cd)
	{
		this.bath_cd = bath_cd;
	}

	public String getBath_date()
	{
		return bath_date;
	}

	public void setBath_date(String bath_date)
	{
		this.bath_date = bath_date;
	}

	public String getBath_wr_date()
	{
		return bath_wr_date;
	}

	public void setBath_wr_date(String bath_wr_date)
	{
		this.bath_wr_date = bath_wr_date;
	}

	public String getSpec_cd()
	{
		return spec_cd;
	}

	public void setSpec_cd(String spec_cd)
	{
		this.spec_cd = spec_cd;
	}

	public String getSpec_content()
	{
		return spec_content;
	}

	public void setSpec_content(String spec_content)
	{
		this.spec_content = spec_content;
	}

	public String getSpec_date()
	{
		return spec_date;
	}

	public void setSpec_date(String spec_date)
	{
		this.spec_date = spec_date;
	}

	public String getSpec_wr_date()
	{
		return spec_wr_date;
	}

	public void setSpec_wr_date(String spec_wr_date)
	{
		this.spec_wr_date = spec_wr_date;
	}

	public String getSelected_date()
	{
		return selected_date;
	}

	public void setSelected_date(String selected_date)
	{
		this.selected_date = selected_date;
	}

	public String getWalk_cd()
	{
		return walk_cd;
	}

	public void setWalk_cd(String walk_cd)
	{
		this.walk_cd = walk_cd;
	}

	public String getWalk_start_date()
	{
		return walk_start_date;
	}

	public void setWalk_start_date(String walk_start_date)
	{
		this.walk_start_date = walk_start_date;
	}

	public String getWalk_end_date()
	{
		return walk_end_date;
	}

	public void setWalk_end_date(String walk_end_date)
	{
		this.walk_end_date = walk_end_date;
	}

	public String getWalk_wr_date()
	{
		return walk_wr_date;
	}

	public void setWalk_wr_date(String walk_wr_date)
	{
		this.walk_wr_date = walk_wr_date;
	}

	public String getSnack_cd()
	{
		return snack_cd;
	}

	public void setSnack_cd(String snack_cd)
	{
		this.snack_cd = snack_cd;
	}

	public String getSnack_name()
	{
		return snack_name;
	}

	public void setSnack_name(String snack_name)
	{
		this.snack_name = snack_name;
	}

	public String getSnack_amount()
	{
		return snack_amount;
	}

	public void setSnack_amount(String snack_amount)
	{
		this.snack_amount = snack_amount;
	}

	public String getSnack_date()
	{
		return snack_date;
	}

	public void setSnack_date(String snack_date)
	{
		this.snack_date = snack_date;
	}

	public String getSnack_wr_date()
	{
		return snack_wr_date;
	}

	public void setSnack_wr_date(String snack_wr_date)
	{
		this.snack_wr_date = snack_wr_date;
	}

	public String getSpl_ty_cd()
	{
		return spl_ty_cd;
	}

	public void setSpl_ty_cd(String spl_ty_cd)
	{
		this.spl_ty_cd = spl_ty_cd;
	}

	public String getSpl_ty_name()
	{
		return spl_ty_name;
	}

	public void setSpl_ty_name(String spl_ty_name)
	{
		this.spl_ty_name = spl_ty_name;
	}

	public String getSpl_cd()
	{
		return spl_cd;
	}

	public void setSpl_cd(String spl_cd)
	{
		this.spl_cd = spl_cd;
	}

	public String getSpl_name()
	{
		return spl_name;
	}

	public void setSpl_name(String spl_name)
	{
		this.spl_name = spl_name;
	}

	public String getSpl_take_cd()
	{
		return spl_take_cd;
	}

	public void setSpl_take_cd(String spl_take_cd)
	{
		this.spl_take_cd = spl_take_cd;
	}

	public String getSpl_take_date()
	{
		return spl_take_date;
	}

	public void setSpl_take_date(String spl_take_date)
	{
		this.spl_take_date = spl_take_date;
	}

	public String getDog_cd()
	{
		return dog_cd;
	}

	public void setDog_cd(String dog_cd)
	{
		this.dog_cd = dog_cd;
	}

	public String getSpl_brand()
	{
		return spl_brand;
	}

	public void setSpl_brand(String spl_brand)
	{
		this.spl_brand = spl_brand;
	}

	public String getFood_selected()
	{
		return food_selected;
	}

	public void setFood_selected(String food_selected)
	{
		this.food_selected = food_selected;
	}

	public String getMemdog_cd()
	{
		return memdog_cd;
	}

	public void setMemdog_cd(String memdog_cd)
	{
		this.memdog_cd = memdog_cd;
	}

	public String getMem_cd()
	{
		return mem_cd;
	}

	public void setMem_cd(String mem_cd)
	{
		this.mem_cd = mem_cd;
	}

	public String getFd_cd()
	{
		return fd_cd;
	}

	public void setFd_cd(String fd_cd)
	{
		this.fd_cd = fd_cd;
	}

	public String getFeed_cd()
	{
		return feed_cd;
	}

	public void setFeed_cd(String feed_cd)
	{
		this.feed_cd = feed_cd;
	}

	public String getFd_amount()
	{
		return fd_amount;
	}

	public void setFd_amount(String fd_amount)
	{
		this.fd_amount = fd_amount;
	}

	public String getFd_date()
	{
		return fd_date;
	}

	public void setFd_date(String fd_date)
	{
		this.fd_date = fd_date;
	}

	public String getFd_wr_date()
	{
		return fd_wr_date;
	}

	public void setFd_wr_date(String fd_wr_date)
	{
		this.fd_wr_date = fd_wr_date;
	}

	public String getFeed_name()
	{
		return feed_name;
	}

	public void setFeed_name(String feed_name)
	{
		this.feed_name = feed_name;
	}

	
	
}
