package cn.whxlover.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.whxlover.domain.PageBean;
import cn.whxlover.domain.admin;
import cn.whxlover.domain.typemain;
import cn.whxlover.domain.user;
import cn.whxlover.service.*;
public class Userlist extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//编码
		response.setContentType("text/html;charset=UTF-8");
		try {
			showuser showuser =new showuser();
			
			String currentpagestr = request.getParameter("currentPage");
			int currentpage;
			//判断是否为第一次访问
			if(currentpagestr!=null) {
			 currentpage = Integer.parseInt(currentpagestr);
			}else {
				 currentpage=1;
			}
			int currentcount = 10;
			PageBean<user> pageBean = new PageBean();
			pageBean = showuser.userlistSer(currentpage,currentcount);
			request.setAttribute("pageBean", pageBean);	
			//request.setAttribute("academycount", academyList.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/admin/user_manage.jsp").forward(request, response);
		
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}