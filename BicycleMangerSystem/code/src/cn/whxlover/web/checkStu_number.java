 
package cn.whxlover.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.whxlover.domain.user;
import cn.whxlover.service.registerSer;

public class checkStu_number extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset:UTF-8");
		//接受前台传来的数据
		String stu_number = request.getParameter("stu_number");
		//进行数据库校验
		registerSer registerser = new registerSer();
		user user = null;
		try {
			user = registerser.isexist(stu_number);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//判断是否存在
		boolean isexit = false;
		if(user!=null) {
			isexit=true;
		}else {
			isexit = false;
		}
		response.getWriter().write("{\"isexit\":"+isexit+"}");

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}