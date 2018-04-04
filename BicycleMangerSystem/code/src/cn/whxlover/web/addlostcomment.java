package cn.whxlover.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.whxlover.service.addCommentSer;


public class addlostcomment extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 获取前台的值
		String id = request.getParameter("rid");
		int rid = Integer.parseInt(id);

		String rentname = request.getParameter("rentname");
		String username = request.getParameter("username");
		String comment = request.getParameter("comment");
		// 调取service层数据
		addCommentSer addCommentSer = new addCommentSer();
		int issuccess = 0;
		try {
			issuccess = addCommentSer.addlostComment(rid, rentname,username, comment);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(issuccess==0) {
			response.getWriter().write("F");			
		}else {
			response.getWriter().write("T");		
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}