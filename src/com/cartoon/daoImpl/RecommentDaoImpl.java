package com.cartoon.daoImpl;

import com.cartoon.Idao.RecommentDao;
import com.cartoon.bean.Cartoon;
import com.cartoon.bean.CartoonRecommend;
import com.cartoon.bean.Recommend;
import com.cartoon.db.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RecommentDaoImpl implements RecommentDao {
	public List<Recommend> getRecommendList() {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		List lists = new ArrayList();

		String findByIDSQL = "select * from recommend";
		try {
			pstmt = conn.prepareStatement(findByIDSQL);
			res = pstmt.executeQuery();
			while (res.next()) {
				Recommend reco = new Recommend();
				reco.setId(res.getInt("id"));
				reco.setAction(res.getString("action"));
				reco.setImage_url(res.getString("image_url"));
				reco.setLink(res.getString("link"));
				reco.setParam1(res.getString("param1"));
				reco.setParam2(res.getString("param2"));
				reco.setTitle(res.getString("title"));
				lists.add(reco);
			}
		} catch (Exception localException) {
		} finally {
			DBConnection.close(pstmt);
			DBConnection.close(res);
		}
		return lists;
	}

	public List<Cartoon> getNewCartoonList() {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		List lists = new ArrayList();

		String findByIDSQL = "select cartoon_id, cartoon_title, cartoon_desc ,cartoon_cover_url from cartoon_list order by cartoon_time desc limit 0,4 ";
		try {
			pstmt = conn.prepareStatement(findByIDSQL);
			res = pstmt.executeQuery();
			while (res.next()) {
				Cartoon cartoon = new Cartoon();
				cartoon.setCartoon_id(res.getInt("cartoon_id"));
				cartoon.setCartoon_title(res.getString("cartoon_title"));
				cartoon.setCartoon_over_url(res.getString("cartoon_cover_url"));
				cartoon.setCartoon_desc(res.getString("cartoon_desc"));
				lists.add(cartoon);
			}
		} catch (Exception localException) {
		} finally {
			DBConnection.close(pstmt);
			DBConnection.close(res);
		}
		return lists;
	}

	public List<CartoonRecommend> getCartoonRecommendList() {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		List lists = new ArrayList();

		String findByIDSQL = "select * from cartoon_recommend";
		try {
			pstmt = conn.prepareStatement(findByIDSQL);
			res = pstmt.executeQuery();
			while (res.next()) {
				CartoonRecommend reco = new CartoonRecommend();
				reco.setId(res.getInt("id"));
				reco.setImage_url(res.getString("image_url"));
				reco.setDesc(res.getString("desc"));
				reco.setTitle(res.getString("title"));
				lists.add(reco);
			}
		} catch (Exception localException) {
		} finally {
			DBConnection.close(pstmt);
			DBConnection.close(res);
		}
		return lists;
	}
}