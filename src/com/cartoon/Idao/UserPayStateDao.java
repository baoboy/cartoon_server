package com.cartoon.Idao;

import com.cartoon.bean.UserPayState;

public abstract interface UserPayStateDao {
	public abstract boolean insertPay(UserPayState paramUserPayState);

	public abstract int getCartoonPayState(int paramInt, String paramString);
}