package com.cartoon.factory;

import com.cartoon.Idao.UserDao;
import com.cartoon.daoImpl.UserDaoImpl;

public class UserDaoFactory {
	public static UserDao getInstance() {
		return new UserDaoImpl();
	}
}