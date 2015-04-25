package com.cartoon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cartoon.Idao.CartoonDao;
import com.cartoon.bean.Cartoon;
import com.cartoon.factory.CartoonDaoFactory;

public class GetCartoonListServlet extends HttpServlet {
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
		CartoonDao dao = CartoonDaoFactory.getInsntance();
		List<Cartoon> lists = dao.finCartoonListByCategory(Integer.valueOf(
				category).intValue());
		out.println("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
		out.println("<response >");
		out.println("<result>");
		out.println("<code>0</code>");
		out.println("<message>OK</message>");
		out.println("</result>");
		out.println("<list>");
		for (Cartoon cartoon : lists) {
			out.println("<item>");
			out.println("<id>" + cartoon.getCartoon_id() + "</id>");
			out.println("<type>" + cartoon.getCartoon_type() + "</type>");
			out.println("<title>" + cartoon.getCartoon_title() + "</title>");
			out.println("<imageurl>" + cartoon.getCartoon_over_url()
					+ "</imageurl>");
			out.println("<author>" + cartoon.getCartoon_author() + "</author>");
			out.println("<category>" + cartoon.getCartoon_category_name()
					+ "</category>");
			out.println("<price>" + cartoon.getCartoon_price() + "</price>");
			System.out.println(cartoon.getCartoon_price());
			out.println("</item>");
		}
		out.println("</list>");
		out.println("</response>");
		out.flush();
		out.close();
	}

	public void init() throws ServletException {
	}
}