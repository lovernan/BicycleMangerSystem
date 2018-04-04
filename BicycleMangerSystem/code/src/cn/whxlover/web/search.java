package cn.whxlover.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import cn.whxlover.domain.PageBean;
import cn.whxlover.domain.admin;
import cn.whxlover.domain.rent;
import cn.whxlover.domain.user;
import cn.whxlover.service.adminlistSer;
import cn.whxlover.service.searchSer;
import cn.whxlover.service.showuser;

public class search extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		try {
			//模糊的页面查询
			searchSer searchSer = new searchSer();
			
			String currentpagestr = request.getParameter("currentPage");
			String se = request.getParameter("search");
			int currentpage;
			//判断是否为第一次访问
			if(currentpagestr!=null) {
			 currentpage = Integer.parseInt(currentpagestr);
			}else {
				 currentpage=1;
			}
			int currentcount = 10;
			PageBean<rent> rentlist = new PageBean();
			rentlist = searchSer.search(se,currentpage,currentcount);
			request.setAttribute("searchrentlist", rentlist);	
			//request.setAttribute("academycount", academyList.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/searchRent.jsp").forward(request, response);
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}