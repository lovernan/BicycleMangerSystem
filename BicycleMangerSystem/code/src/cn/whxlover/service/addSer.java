package cn.whxlover.service;

import java.sql.SQLException;

import cn.whxlover.dao.addDao;
import cn.whxlover.domain.*;

public class addSer {
	//用户增加
	public int user_add(user user) throws SQLException {
		//将数据传到dao层
		addDao addDao = new addDao();
		return addDao.user_add(user);
	}
	//院系增加
	public int ys_add(academy academy) throws SQLException {
		//将数据传到dao层
		addDao addDao = new addDao();
		return addDao.ys_add(academy);
	}
	//车辆类型增加
	public int type_add(typemain typemain) throws SQLException {
		// 将数据传到dao层
		addDao addDao = new addDao();
		return addDao.type_add(typemain);
	}
	//管理员增加
	public int admin_add(admin admin) throws SQLException {
		// 将数据传到dao层
		addDao addDao = new addDao();
		return addDao.admin_add(admin);
	}
	//增加租用
	public int rent_add(rent rent) throws SQLException {
		// 将数据传到dao层
		addDao addDao = new addDao();
		return addDao.rent_add(rent);
	}
	public int lostfound_add(lostfound lostfound) throws SQLException {
		// 将数据传到dao层
		addDao addDao = new addDao();
		return addDao.lostfound_add(lostfound);
	}
	//match增加
	public int match_add(matchh matchh) throws SQLException {
		// 将数据传到dao层
		addDao addDao = new addDao();
		return addDao.match_add(matchh);
	}
	

}
