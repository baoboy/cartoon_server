package com.cartoon.servlet;

import com.cartoon.Idao.CartoonImageDao;
import com.cartoon.bean.CartoonContentImage;
import com.cartoon.factory.CartoonImageDaoFactory;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertCartoonImageServlet extends HttpServlet {
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
		String image_id = request.getParameter("image_id");
		String cartoon_id = request.getParameter("cartoon_id");
		String cartoon_title_id = request.getParameter("cartoon_title_id");
		String cartoon_image_url = request.getParameter("cartoon_image_url");
		CartoonContentImage image = new CartoonContentImage();
		image.setCartoon_id(Integer.valueOf(cartoon_id).intValue());
		image.setCartoon_title_id(Integer.valueOf(cartoon_title_id).intValue());
		image.setImage_id(Integer.valueOf(image_id).intValue());
		image.setImage_url(cartoon_image_url);
		CartoonImageDao dao = CartoonImageDaoFactory.getInstance();
		dao.insertToDB(image);
	}

	public void init() throws ServletException {
	}
}