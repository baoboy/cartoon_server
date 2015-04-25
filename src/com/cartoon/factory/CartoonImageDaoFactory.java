package com.cartoon.factory;

import com.cartoon.Idao.CartoonImageDao;
import com.cartoon.daoImpl.CartoonImageDaoImpl;

public class CartoonImageDaoFactory {
	public static CartoonImageDao getInstance() {
		return new CartoonImageDaoImpl();
	}
}