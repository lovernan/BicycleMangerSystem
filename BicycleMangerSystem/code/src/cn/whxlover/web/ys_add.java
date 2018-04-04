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
import cn.whxlover.domain.user;
import cn.whxlover.service.addSer;

public class ys_add extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset:UTF-8");
		// 接受前台传来的数据
		academy academy = new academy();
		Map<String, String[]> params = request.getParameterMap();
		try {
			BeanUtils.populate(academy, params);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 传数据到service层
		addSer user_addSer = new addSer();
		int issuccess = 0;
		try {
			issuccess = user_addSer.ys_add(academy);
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
		response.sendRedirect("academy");
		//request.getRequestDispatcher("/academy").forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}