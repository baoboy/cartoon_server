package com.cartoon.daoImpl;

import com.cartoon.Idao.UserPayStateDao;
import com.cartoon.bean.UserPayState;
import com.cartoon.db.DBConnection;
import com.cartoon.util.Utils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserPayStateDaoImpl implements UserPayStateDao {
	public boolean insertPay(UserPayState userPay) {
		Connection conn = DBConnection.getConnection();
		String addSQL = "insert into user_pay_state(user_id,cartoon_id,cartoon_pay_state,cartoon_pay_time) values(?,?,?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(addSQL);
			pstmt.setString(1, userPay.getUser_id());
			pstmt.setInt(2, userPay.getCartoon_id());
			pstmt.setInt(3, userPay.getCartoon_pay_state());
			pstmt.setString(4, Utils.getTime());
			int res = pstmt.executeUpdate();
			return res > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(pstmt);
		}

		return false;
	}

	public int getCartoonPayState(int cartoon_id, String user_id) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;

		String findByIDSQL = "select cartoon_pay_state from user_pay_state where user_id=? and cartoon_id=?";
		try {
			pstmt = conn.prepareStatement(findByIDSQL);
			pstmt.setString(1, user_id);
			pstmt.setInt(2, cartoon_id);
			res = pstmt.executeQuery();
			if (res.next())
				return 1;
		} catch (Exception localException) {
		} finally {
			DBConnection.close(pstmt);
			DBConnection.close(res);
		}
		DBConnection.close(pstmt);
		DBConnection.close(res);

		return 0;
	}
}