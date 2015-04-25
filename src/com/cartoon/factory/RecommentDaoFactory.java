package com.cartoon.factory;

import com.cartoon.Idao.RecommentDao;
import com.cartoon.daoImpl.RecommentDaoImpl;

public class RecommentDaoFactory {
	public static RecommentDao getInstance() {
		return new RecommentDaoImpl();
	}
}