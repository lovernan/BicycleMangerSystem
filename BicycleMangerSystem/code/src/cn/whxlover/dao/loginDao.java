package cn.whxlover.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.whxlover.domain.admin;
import cn.whxlover.domain.user;
import cn.whxlover.utils.DataSourceUtils;

public class loginDao {
	//管理员登陆
	public admin adminlogin(String username, String password) throws SQLException {
		
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from admin where admin_name=? and admin_password=?";
		admin admin = runner.query(sql, new BeanHandler<admin>(admin.class),username,password );		
		return admin;
	}
	//用户登陆
	public user userlogin(String username, String password) throws SQLException{

		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from user where student_number=? and password=?";
		user user = runner.query(sql, new BeanHandler<user>(user.class),username,password );		
		return user;
	}

}
