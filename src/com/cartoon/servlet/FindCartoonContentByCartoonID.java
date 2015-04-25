package com.cartoon.servlet;

import com.cartoon.Idao.CartoonDao;
import com.cartoon.Idao.UserPayStateDao;
import com.cartoon.bean.Cartoon;
import com.cartoon.bean.CartoonContent;
import com.cartoon.bean.CartoonContentImage;
import com.cartoon.factory.CartoonDaoFactory;
import com.cartoon.factory.UserPayStateDaoFactory;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FindCartoonContentByCartoonID extends HttpServlet {
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
		int cartoon_id = Integer.valueOf(request.getParameter("cartoon_id"))
				.intValue();
		String user_id = request.getParameter("user_id");
		CartoonDao dao = CartoonDaoFactory.getInsntance();
		Cartoon cartoon = dao.findCartoonByCaroonID(cartoon_id);
		UserPayStateDao payDao = UserPayStateDaoFactory.getInstance();
		int paystate = payDao.getCartoonPayState(cartoon_id, user_id);
		System.out.println(paystate);
		cartoon.setCartoon_pay_state(paystate);
		out.println("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
		out.println("<response >");
		out.println("<result>");
		out.println("<code>0</code>");
		out.println("<message>OK</message>");
		out.println("</result>");
		out.println("<content>");
		out.println("<id>" + cartoon.getCartoon_id() + "</id>");
		out.println("<type>" + cartoon.getCartoon_type() + "</type>");
		out.println("<title>" + cartoon.getCartoon_title() + "</title>");
		out.println("<imageurl>" + cartoon.getCartoon_over_url()
				+ "</imageurl>");
		out.println("<author>" + cartoon.getCartoon_author() + "</author>");
		out.println("<category>" + cartoon.getCartoon_category()
				+ "</category>");
		out.println("<star>" + cartoon.getCartoon_star() + "</star>");
		out.println("<price>" + cartoon.getCartoon_price() + "</price>");
		out.println("<pay_code>" + cartoon.getCartoon_pay_code()
				+ "</pay_code>");
		out.println("<pay_state>" + cartoon.getCartoon_pay_state()
				+ "</pay_state>");
		out.println("<update>" + cartoon.getCartoon_update() + "</update>");
		out.println("<desc>" + cartoon.getCartoon_desc() + "</desc>");
		out.println("<contentlist>");
		for (int i = 0; i < cartoon.getCartoon_contentList().size(); i++) {
			CartoonContent content = (CartoonContent) cartoon
					.getCartoon_contentList().get(i);
			out.println("<episode id='" + content.getCartoon_title_id()
					+ "' title='" + content.getCartoon_title() + "' link='"
					+ "'>");
			for (int j = 0; j < content.getCartoonImageList().size(); j++) {
				CartoonContentImage image = (CartoonContentImage) content
						.getCartoonImageList().get(j);
				out.println("<item  id='" + image.getImage_id() + "' title='"
						+ "' link='" + image.getImage_url() + "'/>");
			}
			out.println("</episode>");
		}

		out.println("</contentlist>");
		out.println("</content>");

		out.println("</response>");
		out.flush();
		out.close();
	}

	public void init() throws ServletException {
	}
}