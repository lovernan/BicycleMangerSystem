package cn.whxlover.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.whxlover.domain.matchh;
import cn.whxlover.domain.rent;
import cn.whxlover.utils.DataSourceUtils;

public class showmatchlist {

	public int gettotalCount() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from matchh";
		Long query = (Long)runner.query(sql, new ScalarHandler());
		return query.intValue();
	}

	public List<matchh> typelistForPageBean(int index, int currentcount) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from matchh order by id desc limit ?,? ";
		return runner.query(sql,new BeanListHandler<matchh>(matchh.class),index,currentcount);
	}

}
