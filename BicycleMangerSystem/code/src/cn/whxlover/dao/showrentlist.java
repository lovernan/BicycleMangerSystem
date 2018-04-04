package cn.whxlover.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.whxlover.domain.*;
import cn.whxlover.domain.user;
import cn.whxlover.utils.DataSourceUtils;

public class showrentlist {

	public int gettotalCount() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from user";
		Long query = (Long)runner.query(sql, new ScalarHandler());
		return query.intValue();
	}

	public List<rent> typelistForPageBean(int index, int currentcount) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from rent order by id desc limit ?,? ";
		return runner.query(sql,new BeanListHandler<rent>(rent.class),index,currentcount);
	}
	//查询自己发过的帖子
	public List<rent> typelistForPageBean(int index, int currentcount, String username) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from rent where name=? order by id desc limit ?,? ";

		return runner.query(sql,new BeanListHandler<rent>(rent.class),username,index,currentcount);
	}

	public List<lostfound> lostfound(int index, int currentcount) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from lostfound order by id desc limit ?,? ";
		return runner.query(sql,new BeanListHandler<lostfound>(lostfound.class),index,currentcount);
	}

	public int gettotalCount1() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from lostfound";
		Long query = (Long)runner.query(sql, new ScalarHandler());
		return query.intValue();
	}

	public int gettotalCount2() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from lostfound";
		Long query = (Long)runner.query(sql, new ScalarHandler());
		return query.intValue();
	}

	public List<lostfound> bbs2listForPageBean(int index, int currentcount, String username) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from lostfound where name=? order by id desc limit ?,? ";
		return runner.query(sql,new BeanListHandler<lostfound>(lostfound.class),username,index,currentcount);
	}

}
