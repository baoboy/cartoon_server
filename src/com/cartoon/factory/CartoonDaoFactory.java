package com.cartoon.factory;

import com.cartoon.Idao.CartoonDao;
import com.cartoon.daoImpl.CartoonDaoImpl;

public class CartoonDaoFactory {
	public static CartoonDao getInsntance() {
		return new CartoonDaoImpl();
	}
}