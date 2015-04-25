package com.cartoon.servlet;

import com.cartoon.Idao.UserDao;
import com.cartoon.bean.User;
import com.cartoon.factory.UserDaoFactory;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddNewUserServlet extends HttpServlet {
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
		String user_id = request.getParameter("user_id");
		User user = new User();
		user.setUser_id(user_id);
		UserDao dao = UserDaoFactory.getInstance();
		boolean res = dao.addNewUser(user);
		PrintWriter out = response.getWriter();
		out.print(res ? 1 : 0);
		out.flush();
		out.close();
		System.out.println(res);
	}

	public void init() throws ServletException {
	}
}