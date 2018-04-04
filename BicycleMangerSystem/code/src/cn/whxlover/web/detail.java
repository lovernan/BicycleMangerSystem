package cn.whxlover.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.whxlover.domain.*;
import cn.whxlover.service.addCommentSer;
import cn.whxlover.service.searchRentSer;

public class detail extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 获取前台的值
		String id = request.getParameter("rid");
		int rid = Integer.parseInt(id);
		// 调取service层数据
		searchRentSer searchRentSer = new searchRentSer();
		rent rent = new rent();
		List<comment> comment = null;
		try {
			rent = searchRentSer.searchRent(rid);
			comment = searchRentSer.searchComment(rid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("rentSearch", rent);
		request.setAttribute("comments", comment);
		request.getRequestDispatcher("/detail.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}