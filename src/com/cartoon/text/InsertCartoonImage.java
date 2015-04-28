package com.cartoon.text;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cartoon.db.DBConnection;

public class InsertCartoonImage {
	public static void main(String[] args) {
		String serverPath = "http://192.168.1.102:8080/CartoonServer/cartoon_picture/";

		for (int i = 1; i < 113; i++) {
			insert(1001, 101, serverPath + "zhuangzi/zhuangzi_1/" + i + ".jpg");
		}
		System.out.println("finish");

	}

	private static void insert(int cartoon_id, int cartoon_title_id,
			String cartoon_image_url) {
		Connection conn = DBConnection.getConnection();
		String addSQL = "insert into cartoon_content_image_list(cartoon_id,cartoon_title_id,cartoon_image_url) values(?,?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(addSQL);
			pstmt.setInt(1, cartoon_id);
			pstmt.setInt(2, cartoon_title_id);
			pstmt.setString(3, cartoon_image_url);

			pstmt.executeUpdate();
		} catch (Exception localException) {
			System.out.println(localException.toString());
		}
	}

}
