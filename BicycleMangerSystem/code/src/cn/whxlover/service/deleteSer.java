package cn.whxlover.service;

import java.sql.SQLException;

import cn.whxlover.dao.deleteDao;

public class deleteSer {
	//删除自行车交易
	public int delete(int id) throws SQLException {
		deleteDao deleteDao = new deleteDao();
		return deleteDao.delete(id);

	}
	//删除失物招领
	public int deletelost(int id) throws SQLException {
		deleteDao deleteDao = new deleteDao();
		return deleteDao.deletelost(id);
	}

}
