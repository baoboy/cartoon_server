package com.cartoon.servlet;

import com.cartoon.Idao.CartoonContentDao;
import com.cartoon.bean.CartoonContent;
import com.cartoon.factory.CartoonContentDaoFactory;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertCartoonContentServlet extends HttpServlet {
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
		String cartoon_title_id = request.getParameter("cartoon_title_id");
		String cartoon_title = request.getParameter("cartoon_title");
		CartoonContent content = new CartoonContent();
		content.setCartoon_id(Integer.valueOf(cartoon_id).intValue());
		content.setCartoon_title(cartoon_title);
		content.setCartoon_title_id(Integer.valueOf(cartoon_title_id)
				.intValue());
		CartoonContentDao dao = CartoonContentDaoFactory.getInsntance();
		dao.insertToDB(content);
	}

	public void init() throws ServletException {
	}
}