package com.cartoon.text;

import com.cartoon.db.DBConnection;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertPicture extends HttpServlet {
	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String serverPath = "http://192.168.1.102:8080/cartoon/cartoon_picture/";

		System.out.println(serverPath);
		for (int i = 1; i < 31; i++) {
			insert(1, serverPath + "wallpaper/" + i + ".jpg", serverPath
					+ "wallpaper/smal_" + i + ".jpg");
		}
		for (int i = 1; i < 31; i++) {
			insert(2, serverPath + "cartoon/" + i + ".jpg", serverPath
					+ "cartoon/smal_" + i + ".jpg");
		}
		for (int i = 1; i < 31; i++) {
			insert(3, serverPath + "beauty/" + i + ".jpg", serverPath
					+ "beauty/smal_" + i + ".jpg");
		}
		for (int i = 1; i < 31; i++) {
			insert(4, serverPath + "car/" + i + ".jpg", serverPath
					+ "car/smal_" + i + ".jpg");
		}
		for (int i = 1; i < 31; i++)
			insert(5, serverPath + "photography/" + i + ".jpg", serverPath
					+ "photography/smal_" + i + ".jpg");
	}

	private void insert(int picture_category_id, String picture_url,
			String picture_smal__url) {
		Connection conn = DBConnection.getConnection();
		String addSQL = "insert into pictures_list(picture_category_id,picture_url,picture_smal_url) values(?,?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(addSQL);
			pstmt.setInt(1, picture_category_id);
			pstmt.setString(2, picture_url);
			pstmt.setString(3, picture_smal__url);

			pstmt.executeUpdate();
		} catch (Exception localException) {
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	public void init() throws ServletException {
	}
}