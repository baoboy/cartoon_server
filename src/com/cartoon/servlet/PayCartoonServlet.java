package com.cartoon.servlet;

import com.cartoon.Idao.UserPayStateDao;
import com.cartoon.bean.UserPayState;
import com.cartoon.factory.UserPayStateDaoFactory;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PayCartoonServlet extends HttpServlet {
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
		String user_id = request.getParameter("user_id");
		UserPayState userPay = new UserPayState();
		userPay.setUser_id(user_id);
		userPay.setCartoon_pay_state(1);
		userPay.setCartoon_id(Integer.valueOf(cartoon_id).intValue());
		UserPayStateDao dao = UserPayStateDaoFactory.getInstance();
		dao.insertPay(userPay);
	}

	public void init() throws ServletException {
	}
}