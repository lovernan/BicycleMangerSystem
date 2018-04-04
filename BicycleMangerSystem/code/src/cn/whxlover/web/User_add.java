package cn.whxlover.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import cn.whxlover.domain.user;
import cn.whxlover.service.addSer;
import cn.whxlover.service.editSer;
import sun.nio.ch.IOUtil;


public class User_add extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset:UTF-8");		
		//接受前台传来的数据
		user user = new user();
		//收集数据的容器
		Map<String,Object> map = new HashMap<String , Object>();
		try {
			//创建磁盘文件项工厂
			DiskFileItemFactory factory = new DiskFileItemFactory();
			//创建核心类
			ServletFileUpload upload =new ServletFileUpload(factory);
			List<FileItem> parseRequest = upload.parseRequest(request);
			for(FileItem item : parseRequest) {
				if(item.isFormField()) {
					//普通表单项
					String fieldName = item.getFieldName();
					String fieldValue = item.getString("UTF-8");
					map.put(fieldName, fieldValue);
				}else {
					//文件表单项
					String fileName = item.getName();
					String path = this.getServletContext().getRealPath("upload");
					InputStream in = item.getInputStream();
					OutputStream out = new FileOutputStream(path+"/"+fileName);
					IOUtils.copy(in, out);
					in.close();
					out.close();
					item.delete();
					
					map.put("image", "upload/"+fileName);
				}
			}
			
			
			BeanUtils.populate(user, map);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//传数据到service层
		addSer user_addSer = new addSer();
		
		int issuccess = 0;
		try {
			issuccess = user_addSer.user_add(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//判断是否增加成功
		if(issuccess>0) {
			request.setAttribute("isadd", "success");
		}else {
			request.setAttribute("isadd", "fail");
		}
		request.getRequestDispatcher("userlist").forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
