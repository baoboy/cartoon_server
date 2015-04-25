package com.cartoon.daoImpl;

import com.cartoon.Idao.CartoonContentDao;
import com.cartoon.Idao.CartoonDao;
import com.cartoon.bean.Cartoon;
import com.cartoon.db.DBConnection;
import com.cartoon.factory.CartoonContentDaoFactory;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartoonDaoImpl implements CartoonDao {
	public void insertCartoonToDB(Cartoon cartoon) {
		Connection conn = DBConnection.getConnection();
		String addSQL = "insert into cartoon_list(cartoon_id,cartoon_title,cartoon_category,cartoon_author,cartoon_cover_url,cartoon_star,cartoon_update,cartoon_desc,cartoon_type) values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(addSQL);
			pstmt.setInt(1, cartoon.getCartoon_id());
			pstmt.setString(2, cartoon.getCartoon_title());
			pstmt.setInt(3, cartoon.getCartoon_category());
			pstmt.setString(4, cartoon.getCartoon_author());
			pstmt.setString(5, cartoon.getCartoon_over_url());
			pstmt.setString(6, cartoon.getCartoon_star());
			pstmt.setString(7, cartoon.getCartoon_update());
			pstmt.setString(8, cartoon.getCartoon_desc());
			pstmt.setInt(9, cartoon.getCartoon_type());
			int res = pstmt.executeUpdate();
			System.out.println(res > 0);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(pstmt);
		}
	}

	public Cartoon findCartoonByCaroonID(int cartoon_id) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;

		String findByIDSQL = "select cartoon_list.*,category.category_name from cartoon_list,category where cartoon_id=? and cartoon_list.cartoon_category=category.category_id ";
		Cartoon cartoon = new Cartoon();
		try {
			pstmt = conn.prepareStatement(findByIDSQL);
			pstmt.setInt(1, cartoon_id);
			res = pstmt.executeQuery();
			if (res.next()) {
				cartoon.setCartoon_id(res.getInt("cartoon_id"));
				cartoon.setCartoon_author(res.getString("cartoon_author"));
				cartoon.setCartoon_title(res.getString("cartoon_title"));
				cartoon.setCartoon_category(res.getInt("cartoon_category"));
				cartoon.setCartoon_over_url(res.getString("cartoon_cover_url"));
				cartoon.setCartoon_star(res.getString("cartoon_star"));
				cartoon.setCartoon_update(res.getString("cartoon_update"));
				cartoon.setCartoon_desc(res.getString("cartoon_desc"));
				cartoon.setCartoon_price(res.getFloat("cartoon_price"));
				cartoon.setCartoon_type(res.getInt("cartoon_type"));
				cartoon.setCartoon_pay_code(res.getString("cartoon_pay_code"));
				cartoon.setCartoon_category_name(res.getString("category_name"));
				CartoonContentDao dao = CartoonContentDaoFactory.getInsntance();
				cartoon.setCartoon_contentList(dao
						.findCartoonContentByCartoonID(res.getInt("cartoon_id")));
			}
		} catch (Exception localException) {
		} finally {
			DBConnection.close(pstmt);
			DBConnection.close(res);
		}
		return cartoon;
	}

	public List<Cartoon> finCartoonListByCategory(int category) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		List lists = new ArrayList();

		String findByIDSQL = "select cartoon_list.*,category.category_name from cartoon_list,category  where cartoon_category=? and cartoon_list.cartoon_category=category.category_id ";
		try {
			pstmt = conn.prepareStatement(findByIDSQL);
			pstmt.setInt(1, category);
			res = pstmt.executeQuery();
			while (res.next()) {
				Cartoon cartoon = new Cartoon();
				cartoon.setCartoon_id(res.getInt("cartoon_id"));
				cartoon.setCartoon_author(res.getString("cartoon_author"));
				cartoon.setCartoon_title(res.getString("cartoon_title"));
				cartoon.setCartoon_category(res.getInt("cartoon_category"));
				cartoon.setCartoon_over_url(res.getString("cartoon_cover_url"));
				cartoon.setCartoon_update(res.getString("cartoon_update"));
				cartoon.setCartoon_type(res.getInt("cartoon_type"));
				cartoon.setCartoon_price(res.getFloat("cartoon_price"));
				cartoon.setCartoon_category_name(res.getString("category_name"));
				lists.add(cartoon);
			}
		} catch (Exception localException) {
		} finally {
			DBConnection.close(pstmt);
			DBConnection.close(res);
		}
		return lists;
	}

	public boolean updateCartoonPayState(int cartoon_id) {
		String sql = "UPDATE cartoon_list SET cartoon_pay_state = ?  WHERE cartoon_id =?";
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 1);
			pstmt.setInt(2, cartoon_id);
			int res = pstmt.executeUpdate();
			if (res > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(pstmt);
		}
		DBConnection.close(pstmt);

		return false;
	}
}