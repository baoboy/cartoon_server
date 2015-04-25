package com.cartoon.daoImpl;

import com.cartoon.Idao.CartoonContentDao;
import com.cartoon.Idao.CartoonImageDao;
import com.cartoon.bean.CartoonContent;
import com.cartoon.db.DBConnection;
import com.cartoon.factory.CartoonImageDaoFactory;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartoonContentDaoImpl implements CartoonContentDao {
	public void insertToDB(CartoonContent cartoonContent) {
		Connection conn = DBConnection.getConnection();
		String addSQL = "insert into cartoon_content_list(cartoon_id,cartoon_title_id,cartoon_title) values(?,?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(addSQL);
			pstmt.setInt(1, cartoonContent.getCartoon_id());
			pstmt.setInt(2, cartoonContent.getCartoon_title_id());
			pstmt.setString(3, cartoonContent.getCartoon_title());
			int res = pstmt.executeUpdate();
			System.out.println(res > 0);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(pstmt);
		}
	}

	public List<CartoonContent> findCartoonContentByCartoonID(int cartooon_id) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		List lists = new ArrayList();

		String findByIDSQL = "select cartoon_title_id,cartoon_title from cartoon_content_list where cartoon_id=? ORDER BY cartoon_title_id";
		try {
			pstmt = conn.prepareStatement(findByIDSQL);
			pstmt.setInt(1, cartooon_id);
			res = pstmt.executeQuery();
			while (res.next()) {
				CartoonContent content = new CartoonContent();
				content.setCartoon_title_id(res.getInt("cartoon_title_id"));
				content.setCartoon_title(res.getString("cartoon_title"));
				CartoonImageDao dao = CartoonImageDaoFactory.getInstance();
				content.setCartoonImageList(dao
						.findCartoonImageByCartoonIdAndCartoonTitleId(
								cartooon_id, res.getInt("cartoon_title_id")));
				lists.add(content);
			}
		} catch (Exception localException) {
		} finally {
			DBConnection.close(pstmt);
			DBConnection.close(res);
		}
		return lists;
	}
}