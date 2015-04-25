package com.cartoon.Idao;

import com.cartoon.bean.CartoonContent;
import java.util.List;

public abstract interface CartoonContentDao {
	public abstract void insertToDB(CartoonContent paramCartoonContent);

	public abstract List<CartoonContent> findCartoonContentByCartoonID(
			int paramInt);
}