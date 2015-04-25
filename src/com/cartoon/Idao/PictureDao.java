package com.cartoon.Idao;

import com.cartoon.bean.Picture;
import java.util.List;

public abstract interface PictureDao {
	public abstract List<Picture> getPictureListByPictureCategoryId(int paramInt);
}