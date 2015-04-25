package com.cartoon.servlet;

import com.cartoon.Idao.CartoonDao;
import com.cartoon.bean.Cartoon;
import com.cartoon.factory.CartoonDaoFactory;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertCartoonServlet extends HttpServlet {
	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		String cartoon_id = request.getParameter("cartoon_id");
		String cartoon_title = request.getParameter("cartoon_title");
		String cartoon_category = request.getParameter("cartoon_category");
		String cartoon_author = request.getParameter("cartoon_author");
		String cartoon_cover_url = request.getParameter("cartoon_cover_url");
		String cartoon_star = request.getParameter("cartoon_star");
		String cartoon_update = request.getParameter("cartoon_update");
		String cartoon_desc = request.getParameter("cartoon_desc");
		String cartoon_type = request.getParameter("cartoon_type");
		Cartoon cartonn = new Cartoon();
		cartonn.setCartoon_author(cartoon_author);
		cartonn.setCartoon_category(Integer.valueOf(cartoon_category)
				.intValue());
		cartonn.setCartoon_desc(cartoon_desc);
		cartonn.setCartoon_id(Integer.valueOf(cartoon_id).intValue());
		cartonn.setCartoon_over_url(cartoon_cover_url);
		cartonn.setCartoon_star(cartoon_star);
		cartonn.setCartoon_title(cartoon_title);
		cartonn.setCartoon_update(cartoon_update);
		cartonn.setCartoon_type(Integer.valueOf(cartoon_type).intValue());
		CartoonDao dao = CartoonDaoFactory.getInsntance();
		dao.insertCartoonToDB(cartonn);
	}

	public void init() throws ServletException {
	}
}