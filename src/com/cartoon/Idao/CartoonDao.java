package com.cartoon.Idao;

import com.cartoon.bean.Cartoon;
import java.util.List;

public abstract interface CartoonDao {
	public abstract void insertCartoonToDB(Cartoon paramCartoon);

	public abstract Cartoon findCartoonByCaroonID(int paramInt);

	public abstract List<Cartoon> finCartoonListByCategory(int paramInt);

	public abstract boolean updateCartoonPayState(int paramInt);
}