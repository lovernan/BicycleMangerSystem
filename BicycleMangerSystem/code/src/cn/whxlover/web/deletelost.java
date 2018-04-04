package cn.whxlover.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.whxlover.service.addCommentSer;
import cn.whxlover.service.deleteSer;


public class deletelost extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 获取前台的值
		String rid = request.getParameter("id");
		int id = Integer.parseInt(rid);
		// 调取service层数据
		deleteSer deleteSer = new deleteSer();
		int issuccess = 0;
		try {
			issuccess = deleteSer.deletelost(id);
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