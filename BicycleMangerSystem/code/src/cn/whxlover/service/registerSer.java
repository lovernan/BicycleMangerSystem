package cn.whxlover.service;

import java.sql.SQLException;

import cn.whxlover.dao.registerDao;
import cn.whxlover.domain.user;

public class registerSer {
	//注册是否成功
	public boolean register(user user) throws SQLException {
		
		registerDao registerDao = new registerDao();
		int issuccess = registerDao.register(user);
		if(issuccess>0) {
			return true;
		}else {
			return false;			
		}
	}
	//查询学号是否存在
	public user isexist(String stu_number) throws SQLException {
		registerDao registerDao = new registerDao();
		user user = registerDao.isexist(stu_number);
		return user;
	}

}
