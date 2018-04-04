package cn.whxlover.service;

import java.sql.SQLException;
import java.util.List;

import cn.whxlover.dao.searchRentDao;
import cn.whxlover.domain.comment;
import cn.whxlover.domain.lostcomment;
import cn.whxlover.domain.lostfound;
import cn.whxlover.domain.rent;

public class searchRentSer {

	public rent searchRent(int rid) throws SQLException {
		searchRentDao searchRentDao = new searchRentDao();
		rent rent = searchRentDao.searchRent(rid);
		return rent;
	}
	//查询评论
	public List<comment> searchComment(int rid) throws SQLException {
		searchRentDao searchRentDao = new searchRentDao();
		List<comment> comment = searchRentDao.searchComment(rid);
		return comment;
	}
	public lostfound searchLostfound(int rid) throws SQLException {
		searchRentDao searchRentDao = new searchRentDao();
		lostfound lostfound = searchRentDao.searchlost(rid);
		return lostfound;
	}
	public List<lostcomment> searchLostComment(int rid) throws SQLException {
		searchRentDao searchRentDao = new searchRentDao();
		List<lostcomment> lostcomment = searchRentDao.searchlostComment(rid);
		return lostcomment;
	}

}
