package cn.whxlover.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.whxlover.service.*;
import cn.whxlover.domain.*;
public class user_manage_edit extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//接受传来的id
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		//查询数据
		showuser showuser = new showuser();
		user user = null;
		try {
			user = showuser.showuserbyid(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("user", user);
		request.getRequestDispatcher("/admin/user_manage_edit.jsp").forward(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}