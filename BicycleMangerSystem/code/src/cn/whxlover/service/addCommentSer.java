package cn.whxlover.service;

import java.sql.SQLException;

import cn.whxlover.dao.addCommentDao;

public class addCommentSer {

	

	public int addComment(int rid, String rentname, String username, String comment) throws SQLException {
		addCommentDao addCommentDao = new addCommentDao();
		int i = addCommentDao.addComment(rid,rentname,username,comment);
		return i;
	}

	public int addlostComment(int rid, String rentname, String username, String comment) throws SQLException {
		addCommentDao addCommentDao = new addCommentDao();
		int i = addCommentDao.addlostComment(rid,rentname,username,comment);
		return i;
	}

}
