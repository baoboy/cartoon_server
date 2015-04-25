package com.cartoon.factory;

import com.cartoon.Idao.UserPayStateDao;
import com.cartoon.daoImpl.UserPayStateDaoImpl;

public class UserPayStateDaoFactory {
	public static UserPayStateDao getInstance() {
		return new UserPayStateDaoImpl();
	}
}