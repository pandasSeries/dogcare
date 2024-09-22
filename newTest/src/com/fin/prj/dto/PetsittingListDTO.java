package com.fin.prj.dto;

public class PetsittingListDTO
{
	private String post_cd, dog_name, class1, class2, work_date;
	//-- 의뢰코드, 반려견 리스트 중 반려견1 이름, 주소1, 주소2, 예약일시
	private int dog_count, work_time;
	//-- 맡길 반려견 수, 맡길시간 
	
	public String getPost_cd()
	{
		return post_cd;
	}
	public void setPost_cd(String post_cd)
	{
		this.post_cd = post_cd;
	}
	public String getDog_name()
	{
		return dog_name;
	}
	public void setDog_name(String dog_name)
	{
		this.dog_name = dog_name;
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
	public String getWork_date()
	{
		return work_date;
	}
	public void setWork_date(String work_date)
	{
		this.work_date = work_date;
	}
	public int getDog_count()
	{
		return dog_count;
	}
	public void setDog_count(int dog_count)
	{
		this.dog_count = dog_count;
	}
	public int getWork_time()
	{
		return work_time;
	}
	public void setWork_time(int work_time)
	{
		this.work_time = work_time;
	} 
}
