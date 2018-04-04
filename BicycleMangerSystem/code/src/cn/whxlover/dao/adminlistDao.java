package cn.whxlover.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.whxlover.domain.admin;
import cn.whxlover.domain.user;
import cn.whxlover.utils.DataSourceUtils;

public class adminlistDao {

	public List<admin> adminlist() throws SQLException {
		
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from admin";
		return runner.query(sql, new BeanListHandler<admin>(admin.class));
		 
	}

	public int gettotalCount() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from admin";
		Long query = (Long)runner.query(sql, new ScalarHandler());
		return query.intValue();
	}

	public List<admin> adminlistForPageBean(int index, int currentcount) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from admin limit ?,?";
		return runner.query(sql,new BeanListHandler<admin>(admin.class),index,currentcount);
	}
}
