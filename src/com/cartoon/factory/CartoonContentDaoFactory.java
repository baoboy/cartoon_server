package com.cartoon.factory;

import com.cartoon.Idao.CartoonContentDao;
import com.cartoon.daoImpl.CartoonContentDaoImpl;

public class CartoonContentDaoFactory {
	public static CartoonContentDao getInsntance() {
		return new CartoonContentDaoImpl();
	}
}