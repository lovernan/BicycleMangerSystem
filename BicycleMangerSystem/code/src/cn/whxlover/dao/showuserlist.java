package cn.whxlover.dao;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.whxlover.domain.typemain;
import cn.whxlover.domain.user;
import cn.whxlover.utils.DataSourceUtils;
//展示所有用户的信息
public class showuserlist {

	public List<user> showuserlist() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		//QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from user";
		List<user> userlist = runner.query(sql, new BeanListHandler<user>(user.class));
		return userlist;
	}

	public int gettotalCount() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from user";
		Long query = (Long)runner.query(sql, new ScalarHandler());
		return query.intValue();
	}

	public List<user> typelistForPageBean(int index, int currentcount) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from user limit ?,?";
		return runner.query(sql,new BeanListHandler<user>(user.class),index,currentcount);
	}

	public user showuserlistbyid(int id) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from user where id=?";
		user user = runner.query(sql,  new BeanHandler<user>(user.class),id);
		return user;
	}

}
