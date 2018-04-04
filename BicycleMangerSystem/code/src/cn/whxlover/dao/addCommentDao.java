package cn.whxlover.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import cn.whxlover.utils.DataSourceUtils;

public class addCommentDao {

	public int addComment(int rid, String rentname, String username, String comment) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into comment values(null,?,?,?,?)";
		int i = runner.update(sql, rid,username,rentname,comment);
		return i;
	}

	public int addlostComment(int rid, String rentname, String username, String comment) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into lostcomment values(null,?,?,?,?)";
		int i = runner.update(sql, rid,username,rentname,comment);
		return i;
	}

}
