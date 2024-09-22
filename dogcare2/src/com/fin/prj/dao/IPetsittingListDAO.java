package com.fin.prj.dao;

import java.util.ArrayList;

import com.fin.prj.dto.PetsittingListDTO;

public interface IPetsittingListDAO
{
	public ArrayList<PetsittingListDTO> listAll();
}
