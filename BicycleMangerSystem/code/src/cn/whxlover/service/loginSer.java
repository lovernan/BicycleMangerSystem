package cn.whxlover.service;

import java.sql.SQLException;
import java.util.List;

import cn.whxlover.dao.loginDao;
import cn.whxlover.domain.admin;
import cn.whxlover.domain.user;

public class loginSer {

	
	//管理员登陆
	public admin adminlogin(String username, String password) throws SQLException {
		loginDao adminloginDao = new loginDao();
		admin isadmin = adminloginDao.adminlogin(username,password);
		return isadmin;
	}
	//用户登陆
	public user userlogin(String username, String password) throws SQLException {
		loginDao loginDao = new loginDao();
		user isuser = loginDao.userlogin(username,password);
		return isuser;
	}


	

}
