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

public class detailLost extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 获取前台的值
		String id = request.getParameter("rid");
		int rid = Integer.parseInt(id);
		// 调取service层数据
		searchRentSer searchRentSer = new searchRentSer();
		lostfound lostfound = new lostfound();
		List<lostcomment> lostcomment = null;
		try {
			lostfound = searchRentSer.searchLostfound(rid);
			lostcomment = searchRentSer.searchLostComment(rid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("lostSearch", lostfound);
		request.setAttribute("lostcomments", lostcomment);
		request.getRequestDispatcher("/lostdetail.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}