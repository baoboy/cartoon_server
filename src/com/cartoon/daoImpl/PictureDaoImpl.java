package com.cartoon.daoImpl;

import com.cartoon.Idao.PictureDao;
import com.cartoon.bean.Picture;
import com.cartoon.db.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PictureDaoImpl implements PictureDao {
	public List<Picture> getPictureListByPictureCategoryId(int category_id) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		List lists = new ArrayList();

		String findByIDSQL = "select picture_url ,picture_smal_url from pictures_list where picture_category_id=?  ";
		try {
			pstmt = conn.prepareStatement(findByIDSQL);
			pstmt.setInt(1, category_id);
			res = pstmt.executeQuery();
			while (res.next()) {
				Picture picture = new Picture();
				picture.setPicture_url(res.getString("picture_url"));
				picture.setPicture_category_id(category_id);
				picture.setPicture_smal_url(res.getString("picture_smal_url"));
				lists.add(picture);
			}
		} catch (Exception localException) {
		} finally {
			DBConnection.close(pstmt);
			DBConnection.close(res);
		}
		return lists;
	}
}