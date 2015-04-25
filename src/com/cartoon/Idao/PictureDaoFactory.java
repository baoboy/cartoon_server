package com.cartoon.Idao;

import com.cartoon.daoImpl.PictureDaoImpl;

public class PictureDaoFactory {
	public static PictureDao getInstance() {
		return new PictureDaoImpl();
	}
}