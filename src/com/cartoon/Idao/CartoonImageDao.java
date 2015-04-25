package com.cartoon.Idao;

import com.cartoon.bean.CartoonContentImage;
import java.util.List;

public abstract interface CartoonImageDao {
	public abstract void insertToDB(CartoonContentImage paramCartoonContentImage);

	public abstract List<CartoonContentImage> findCartoonImageByCartoonIdAndCartoonTitleId(
			int paramInt1, int paramInt2);
}