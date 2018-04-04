package cn.whxlover.service;

import java.sql.SQLException;

import cn.whxlover.dao.editDao;
import cn.whxlover.domain.user;

public class editSer {
	//院系编辑
	public int ys_editSer(int id,String name) throws SQLException {
		editDao editDao = new editDao();
		return editDao.ys_editDao(id,name);
	}
	//车辆类型编辑
	public int type_editSer(int id, String name) throws SQLException {
		editDao editDao = new editDao();
		return editDao.type_editDao(id,name);
	}
	//用户编辑
	public void user_edit(user user) throws SQLException {
		editDao editDao = new editDao();
		editDao.user_editDao(user);
	}

	

}
