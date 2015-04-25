package com.cartoon.factory;

import com.cartoon.Idao.PictureCategoryDao;
import com.cartoon.daoImpl.PictureCategoryDaoImpl;

public class PictureCategoryDaoFactory {
	public static PictureCategoryDao getInsance() {
		return new PictureCategoryDaoImpl();
	}
}