package cn.whxlover.web;

import java.io.IOException;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.whxlover.domain.PageBean;
import cn.whxlover.domain.*;
import cn.whxlover.service.*;
public class mybbs extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//编码
		//request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		try {
			showrent showrent =new showrent();
			//String username = request.getParameter("username");
			String username=new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");

			//username = URLDecoder.decode(username, "UTF-8");

			String currentpagestr = request.getParameter("currentPage");
			int currentpage;
			//判断是否为第一次访问
			if(currentpagestr!=null) {
			 currentpage = Integer.parseInt(currentpagestr);
			}else {
				 currentpage=1;
			}
			int currentcount = 10;
			PageBean<rent> mybbsrent = new PageBean();
			mybbsrent = showrent.mybbsSer(currentpage,currentcount,username);
			request.setAttribute("mybbsrent", mybbsrent);	
			//request.setAttribute("academycount", academyList.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/mybbs.jsp").forward(request, response);
		
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}