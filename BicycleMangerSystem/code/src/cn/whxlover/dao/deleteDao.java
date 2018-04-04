package cn.whxlover.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import cn.whxlover.utils.DataSourceUtils;

public class deleteDao {
	//删除自行车交易
	public int delete(int id) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql ="delete from rent where id=?";
		int is = runner.update(sql, id);
		return is;
	}
	//删除失物招领
	public int deletelost(int id) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql ="delete from lostfound where id=?";
		int is = runner.update(sql, id);
		return is;
	}

}
