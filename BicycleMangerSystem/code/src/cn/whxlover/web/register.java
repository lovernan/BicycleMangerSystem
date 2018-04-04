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

import cn.whxlover.domain.user;
import cn.whxlover.service.registerSer;

public class register extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//注册功能完善
		//编码解决
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset:UTF-8");
		//接受前台传来的数据
		Map<String, String[]> paramap = request.getParameterMap();
		//实体封装
		user user = new user();
		try {
			BeanUtils.populate(user, paramap);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(user.getAcademy());
		//设置表单中没有的数据
		user.setType(null);
		user.setImage(null);
		user.setDescc(null);
		
		//完善注册功能
		String info =null;
		registerSer registerSer = new registerSer();
		boolean issuccess = false;
		try {
			issuccess = registerSer.register(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(issuccess) {
			request.getRequestDispatcher("admin/login.jsp").forward(request, response);
		}else {
			/*request.setAttribute("info", "注册失败，请重新注册");
			request.getRequestDispatcher("/register").forward(request, response);*/
			response.getWriter().write("ccc");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}