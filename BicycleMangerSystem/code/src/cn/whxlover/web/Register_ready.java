package cn.whxlover.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.whxlover.domain.academy;
import cn.whxlover.service.Academyser;

public class Register_ready extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//查询数据库中的院系
		Academyser academylist =new Academyser();
		List<academy> academyList = null;
		try {
			academyList = academylist.academylist();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("academyList", academyList);	
		request.setAttribute("academycount", academyList.size());
		//转发到注册页面
		request.getRequestDispatcher("/admin/register.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}