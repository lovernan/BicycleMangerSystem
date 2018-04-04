package cn.whxlover.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.whxlover.domain.academy;
import cn.whxlover.domain.admin;
import cn.whxlover.domain.user;
import cn.whxlover.service.addSer;

public class role_add extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset:UTF-8");
		// 接受前台传来的数据
		admin admin = new admin();
		Map<String, String[]> params = request.getParameterMap();
		try {
			BeanUtils.populate(admin, params);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 传数据到service层
		addSer admin_addSer = new addSer();
		int issuccess = 0;
		try {
			issuccess = admin_addSer.admin_add(admin);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 判断是否增加成功
		if (issuccess > 0) {
			request.setAttribute("isadd", "success");
		} else {
			request.setAttribute("isadd", "fail");
		}
		response.sendRedirect("/adminlist");
		//request.getRequestDispatcher("/academy").forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}