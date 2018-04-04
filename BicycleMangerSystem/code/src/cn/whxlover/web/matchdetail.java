package cn.whxlover.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.whxlover.domain.comment;
import cn.whxlover.domain.matchh;
import cn.whxlover.domain.rent;
import cn.whxlover.service.searchMatchSer;
import cn.whxlover.service.searchRentSer;

public class matchdetail extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				// 获取前台的值
				String id = request.getParameter("id");
				int rid = Integer.parseInt(id);

				// 调取service层数据
				searchMatchSer searchMatchSer = new searchMatchSer();
			
				matchh matchh = null;
				try {
					matchh = searchMatchSer.searchRent(rid);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.setAttribute("matchdetail", matchh);
				request.getRequestDispatcher("/matchdetail.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}