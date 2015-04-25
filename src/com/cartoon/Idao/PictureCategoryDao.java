package com.cartoon.Idao;

import com.cartoon.bean.PictureCategory;
import java.util.List;

public abstract interface PictureCategoryDao {
	public abstract List<PictureCategory> getCatrgoryList();
}