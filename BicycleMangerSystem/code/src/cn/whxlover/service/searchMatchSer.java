package cn.whxlover.service;

import java.sql.SQLException;
import java.util.List;

import cn.whxlover.dao.searchDao;
import cn.whxlover.domain.matchh;

public class searchMatchSer {

	public matchh searchRent(int rid) throws SQLException {
		searchDao searchDao =new searchDao();
		return searchDao.searchmatch(rid);
	}

}
