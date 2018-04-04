package cn.whxlover.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.whxlover.domain.comment;
import cn.whxlover.domain.lostcomment;
import cn.whxlover.domain.lostfound;
import cn.whxlover.domain.rent;
import cn.whxlover.utils.DataSourceUtils;

public class searchRentDao {

	public rent searchRent(int rid) throws SQLException {
		QueryRunner runner =new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from rent where id=?";
		rent rent = runner.query(sql, new BeanHandler<rent>(rent.class), rid);
		return rent;
	}

	public List<comment> searchComment(int rid) throws SQLException {
		QueryRunner runner =new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from comment where rid=?";
		List<comment> comment = runner.query(sql, new BeanListHandler<comment>(comment.class), rid);
		return comment;
	}

	public lostfound searchlost(int rid) throws SQLException {
		QueryRunner runner =new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from lostfound where id=?";
		lostfound lostfound = runner.query(sql, new BeanHandler<lostfound>(lostfound.class), rid);
		return lostfound;
	}

	public List<lostcomment> searchlostComment(int rid) throws SQLException {
		QueryRunner runner =new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from lostcomment where rid=?";
		List<lostcomment> lostcomment = runner.query(sql, new BeanListHandler<lostcomment>(lostcomment.class), rid);
		return lostcomment;
	}

}
