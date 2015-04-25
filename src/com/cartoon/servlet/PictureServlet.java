package com.cartoon.servlet;

import com.cartoon.Idao.PictureCategoryDao;
import com.cartoon.Idao.PictureDao;
import com.cartoon.Idao.PictureDaoFactory;
import com.cartoon.bean.Picture;
import com.cartoon.bean.PictureCategory;
import com.cartoon.factory.PictureCategoryDaoFactory;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PictureServlet extends HttpServlet {
	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/xml;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		String category = request.getParameter("category");
		PictureCategoryDao cateDap = PictureCategoryDaoFactory.getInsance();
		List<PictureCategory> cateLists = cateDap.getCatrgoryList();
		PictureDao dao = PictureDaoFactory.getInstance();
		List<Picture> lists = dao.getPictureListByPictureCategoryId(Integer
				.valueOf(category).intValue());
		out.println("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
		out.println("<response >");
		out.println("<result>");
		out.println("<code>0</code>");
		out.println("<message>OK</message>");
		out.println("</result>");
		out.println("<category_list>");

		for (PictureCategory cate : cateLists) {
			out.println("<item  category_id='" + cate.getCategory_id()
					+ "' category_name='" + cate.getCategory_name() + "'/>");
		}
		out.println("</category_list>");

		out.println("<list>");
		for (Picture Picture : lists) {
			out.println("<item  category='" + Picture.getPicture_category_id()
					+ "' picture_url='" + Picture.getPicture_url()
					+ "' picture_smal_url='" + Picture.getPicture_smal_url()
					+ "'/>");
		}
		out.println("</list>");
		out.println("</response>");
		out.flush();
		out.close();
		System.out.println("aaaaaaaaaaaaa");
	}

	public void init() throws ServletException {
	}
}