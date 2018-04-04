package cn.whxlover.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.whxlover.domain.matchh;
import cn.whxlover.domain.rent;
import cn.whxlover.utils.DataSourceUtils;

public class searchDao {
	public int gettotalCount() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from rent";
		Long query = (Long)runner.query(sql, new ScalarHandler());
		return query.intValue();
	}
	public List<rent> search(String se, int index, int currentcount) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from rent where information like ? or name like ? limit ?,? ";
		//user query = runner.query(sql, new BeanHandler<user>(user.class), "%"+text+"%");
		List<rent> rentlist = runner.query(sql, new BeanListHandler<rent>(rent.class), "%"+se+"%","%"+se+"%",index,currentcount);
		return rentlist;
	}
	public matchh searchmatch(int rid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from matchh where id=? ";
		//user query = runner.query(sql, new BeanHandler<user>(user.class), "%"+text+"%");
		matchh matchh = runner.query(sql, new BeanHandler<matchh>(matchh.class), rid);
		return matchh;
	}

	

}
