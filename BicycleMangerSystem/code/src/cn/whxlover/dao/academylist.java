package cn.whxlover.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.whxlover.domain.academy;
import cn.whxlover.utils.DataSourceUtils;

public class academylist {

	public List<academy> academylist() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from academy";
		List<academy> academylist = runner.query(sql, new BeanListHandler<academy>(academy.class));
		return academylist;
	}

	public int gettotalCount() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from academy";
		Long query = (Long)runner.query(sql, new ScalarHandler());
		return query.intValue();
	}

	public List<academy> academylistForPageBean(int index,int currentcount) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from academy limit ?,?";
		return runner.query(sql,new BeanListHandler<academy>(academy.class),index,currentcount);
	}

}
