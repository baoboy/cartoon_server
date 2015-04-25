package com.cartoon.daoImpl;

import com.cartoon.Idao.UserDao;
import com.cartoon.bean.User;
import com.cartoon.db.DBConnection;
import com.cartoon.util.Utils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
	public boolean addNewUser(User user) {
		Connection conn = DBConnection.getConnection();
		String addSQL = "insert into user(user_id,user_register_time) values(?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(addSQL);
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, Utils.getTime());
			int res = pstmt.executeUpdate();
			return res > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(pstmt);
		}

		return false;
	}
}