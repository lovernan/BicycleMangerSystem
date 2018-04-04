package cn.whxlover.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import cn.whxlover.domain.*;
import cn.whxlover.utils.DataSourceUtils;


public class addDao {
	//用戶增加
	public int user_add(user user) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into user values(null,?,?,?,?,?,?,?)";
		int issuccess = runner.update(sql,user.getName(),user.getStudent_number(),user.getPassword(),user.getAcademy(),user.getType(),user.getImage(),user.getDescc());
		return issuccess;
	}
	//院系增加
	
	public int ys_add(academy academy) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into academy values(null,?)";
		int issuccess = runner.update(sql,academy.getAcademy_name());
		return issuccess;
	}
	//车辆类型增加
	public int type_add(typemain typemain) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into typemain values(null,?)";
		int issuccess = runner.update(sql,typemain.getType());
		return issuccess;
	}
	//管理员增加
	public int admin_add(admin admin) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into admin values(null,?,?,?,?)";
		int issuccess = runner.update(sql,admin.getAdmin_name(),admin.getAdmin_password(),admin.getAdmin_identity(),admin.getStatement());
		return issuccess;
	}
	//增加租用
	public int rent_add(rent rent) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into rent values(null,?,?,?,?)";
		int issuccess = runner.update(sql,rent.getName(),rent.getInformation(),rent.getTel(),rent.getImage());
		return issuccess;
	}

	public int lostfound_add(lostfound lostfound) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into lostfound values(null,?,?,?,?)";
		int issuccess = runner.update(sql,lostfound.getName(),lostfound.getInformation(),lostfound.getTel(),lostfound.getImage());
		return issuccess;
	}

	public int match_add(matchh matchh) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into matchh values(null,?,?)";
		System.out.println(matchh.getTitle()+matchh.getContext());
		int issuccess = runner.update(sql,matchh.getTitle(),matchh.getContext());
		return issuccess;
	}

}
