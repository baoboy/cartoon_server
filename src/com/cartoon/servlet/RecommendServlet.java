package com.cartoon.servlet;

import com.cartoon.Idao.RecommentDao;
import com.cartoon.bean.Cartoon;
import com.cartoon.bean.CartoonRecommend;
import com.cartoon.bean.Recommend;
import com.cartoon.factory.RecommentDaoFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RecommendServlet extends HttpServlet {
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
		RecommentDao dao = RecommentDaoFactory.getInstance();
		List<Cartoon> lists = dao.getNewCartoonList();
		List<Recommend> recommendLists = dao.getRecommendList();
		List<CartoonRecommend> carReLists = dao.getCartoonRecommendList();
		out.println("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
		out.println("<response >");
		out.println("<result>");
		out.println("<code>0</code>");
		out.println("<message>OK</message>");
		out.println("</result>");
		out.println("<recommends>");
		for (Recommend re : recommendLists) {
			out.println("<recommend  id='" + re.getId() + "' title='"
					+ re.getTitle() + "' action='" + re.getAction()
					+ "' imageurl='" + re.getImage_url() + "' link='"
					+ re.getLink() + "' param1='" + re.getParam1()
					+ "' param2='" + re.getParam2() + "' />");
		}

		out.println("</recommends>");

		out.println("<categorys>");

		out.println("<category  id='2' title='×îÐÂ'   more='cartoon' >");
		for (Cartoon cartoon : lists) {
			out.println("<item  id='" + cartoon.getCartoon_id() + "' title='"
					+ cartoon.getCartoon_title() + "' desc='"
					+ cartoon.getCartoon_desc() + "' imageurl='"
					+ cartoon.getCartoon_over_url() + "'/>");
		}
		out.println("</category>");

		out.println("<category  id='3' title='Âþ»­ÍÆ¼ö'   more='cartoon' >");
		for (CartoonRecommend cartoon : carReLists) {
			out.println("<item  id='" + cartoon.getId() + "' title='"
					+ cartoon.getTitle() + "' desc='" + cartoon.getDesc()
					+ "' imageurl='" + cartoon.getImage_url() + "'/>");
		}
		out.println("</category>");
		out.println("</categorys>");
		out.println("</response>");
		out.flush();
		out.close();
	}

	public void init() throws ServletException {
	}
}