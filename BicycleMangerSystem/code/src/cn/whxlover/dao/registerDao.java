package cn.whxlover.dao;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import cn.whxlover.domain.user;
import cn.whxlover.utils.DataSourceUtils;

public class registerDao {

	public int register(user user) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into user values(null,?,?,?,?,?,?,?)";
		String issuccess = user.getStudent_number();
		int issucess = runner.update(sql,user.getName(),user.getStudent_number(),user.getPassword(),user.getAcademy(),user.getType(),user.getImage(),user.getDescc());
		System.out.println(user.getStudent_number());
		return issucess;
	}

	public user isexist(String stu_number) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from user where student_number=?";
		return runner.query(sql, new BeanHandler<user>(user.class),stu_number);
	}

}
