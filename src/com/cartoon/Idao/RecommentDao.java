package com.cartoon.Idao;

import com.cartoon.bean.Cartoon;
import com.cartoon.bean.CartoonRecommend;
import com.cartoon.bean.Recommend;
import java.util.List;

public abstract interface RecommentDao {
	public abstract List<Recommend> getRecommendList();

	public abstract List<Cartoon> getNewCartoonList();

	public abstract List<CartoonRecommend> getCartoonRecommendList();
}