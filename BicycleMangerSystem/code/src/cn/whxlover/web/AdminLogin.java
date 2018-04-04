package cn.whxlover.web;

import java.io 

.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.whxlover.domain.*;
import cn.whxlover.service.loginSer;
import jdk.nashorn.internal.runtime.Context;
import nl.captcha.Captcha;

public class AdminLogin extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//调试编码
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		//接受前台传来的信息
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String person = request.getParameter("check");
		String captcha = request.getParameter("captcha");
		loginSer loginser = new loginSer();
		System.out.println("dadada");
		// 检测验证码是否正确
		Captcha captchaObj = (Captcha)request.getSession().getAttribute(Captcha.NAME 

);
		if (!captchaObj.isCorrect(captcha)) {
			response.setContentType("text/html;charset=UTF-8");
			request.setAttribute("info", "验证码错误");
			String path= request.getContextPath();
			response.sendRedirect(path+"/admin/login.jsp");
			//request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
			return;
		}
		if(person.equals("admin")) {			
			//如果是管理员登陆
			admin isadmin = null;
			HttpSession session = request.getSession();
			try {
				isadmin = loginser.adminlogin(username,password);
				if(isadmin!=null) {					
					session.setAttribute("admin", isadmin);
					response.sendRedirect("admin/index.jsp");
					
				}else {
					response.setContentType("text/html;charset=UTF-8");
					request.setAttribute("info", "用户名或密码错误");
					request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			//如果是用户登陆
			user isuser = null;
			try {
				isuser = loginser.userlogin(username,password);
				HttpSession session = request.getSession();
				if(isuser!=null) {					
					session.setAttribute("user", isuser);
					response.sendRedirect("index.jsp");					
				}else {
					response.setContentType("text/html;charset=UTF-8");
					request.setAttribute("info", "用户名或密码错误");
					request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
