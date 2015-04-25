package com.cartoon.daoImpl;

import com.cartoon.Idao.PictureCategoryDao;
import com.cartoon.bean.PictureCategory;
import com.cartoon.db.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PictureCategoryDaoImpl implements PictureCategoryDao {
	public List<PictureCategory> getCatrgoryList() {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		List lists = new ArrayList();

		String findByIDSQL = "select * from picture_category ";
		try {
			pstmt = conn.prepareStatement(findByIDSQL);
			res = pstmt.executeQuery();
			while (res.next()) {
				PictureCategory picture = new PictureCategory();
				picture.setCategory_name(res.getString("category_name"));
				picture.setCategory_id(res.getInt("category_id"));
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