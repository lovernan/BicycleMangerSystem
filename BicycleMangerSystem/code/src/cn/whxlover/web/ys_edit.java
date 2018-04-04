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
import cn.whxlover.service.addSer;
import cn.whxlover.service.editSer;

public class ys_edit extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset:UTF-8");
		// 接受前台传来的数据
		String ys_id = request.getParameter("id");
		String name = request.getParameter("academy_name");
		int id = Integer.parseInt(ys_id);
		// 传数据到service层
		editSer editSer = new editSer();
		int issuccess = 0;
		try {
			issuccess = editSer.ys_editSer(id,name);
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
		// request.getRequestDispatcher("/academy").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}