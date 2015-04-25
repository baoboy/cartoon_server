package com.cartoon.daoImpl;

import com.cartoon.Idao.CartoonImageDao;
import com.cartoon.bean.CartoonContentImage;
import com.cartoon.db.DBConnection;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartoonImageDaoImpl implements CartoonImageDao {
	public void insertToDB(CartoonContentImage cartoonImage) {
		Connection conn = DBConnection.getConnection();
		String addSQL = "insert into cartoon_content_image_list(cartoon_image_id,cartoon_id,cartoon_title_id,cartoon_image_url) values(?,?,?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(addSQL);
			pstmt.setInt(1, cartoonImage.getImage_id());
			pstmt.setInt(2, cartoonImage.getCartoon_id());
			pstmt.setInt(3, cartoonImage.getCartoon_title_id());
			pstmt.setString(4, cartoonImage.getImage_url());
			int res = pstmt.executeUpdate();
			System.out.println(res > 0);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(pstmt);
		}
	}

	public List<CartoonContentImage> findCartoonImageByCartoonIdAndCartoonTitleId(
			int cartoon_id, int cartoon_title_id) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		List lists = new ArrayList();

		String findByIDSQL = "select cartoon_image_id,cartoon_image_url from cartoon_content_image_list where cartoon_id=? and cartoon_title_id=? ";
		try {
			pstmt = conn.prepareStatement(findByIDSQL);
			pstmt.setInt(1, cartoon_id);
			pstmt.setInt(2, cartoon_title_id);
			res = pstmt.executeQuery();
			while (res.next()) {
				CartoonContentImage image = new CartoonContentImage();
				image.setImage_id(res.getInt("cartoon_image_id"));
				image.setImage_url(res.getString("cartoon_image_url"));
				lists.add(image);
			}
		} catch (Exception localException) {
		} finally {
			DBConnection.close(pstmt);
			DBConnection.close(res);
		}
		return lists;
	}
}