package com.cartoon.text;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cartoon.db.DBConnection;

public class Test {
	private static Connection conn = DBConnection.getConnection();

	public static void main(String[] args) {
		for (int i = 1; i < 6; i++) {
			insert(1005, 100 + i, "µÚ" + i + "»°");
		}
		System.out.println("finish");
	}

	private static void insert(int cartoon_id, int cartoon_title_id,
			String cartoon_title) {
		String addSQL = "insert into cartoon_content_list(cartoon_id,cartoon_title_id,cartoon_title) values(?,?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(addSQL);
			pstmt.setInt(1, cartoon_id);
			pstmt.setInt(2, cartoon_title_id);
			pstmt.setString(3, cartoon_title);
			pstmt.executeUpdate();
		} catch (Exception localException) {
		}
	}
}