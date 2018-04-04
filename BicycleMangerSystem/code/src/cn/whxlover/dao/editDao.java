package cn.whxlover.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import cn.whxlover.domain.user;
import cn.whxlover.utils.DataSourceUtils;

public class editDao {
	//院系编辑
	public int ys_editDao(int id, String name) throws SQLException {
		
		QueryRunner queryrunner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update academy set academy_name =? where id=?";
		Object[] param= {name,id};
		int i=queryrunner.update(sql, param);
		return i;
	}
	//车辆类型编辑
	public int type_editDao(int id, String name) throws SQLException {
		QueryRunner queryrunner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update typemain set type =? where id=?";
		Object[] param= {name,id};
		int i=queryrunner.update(sql, param);
		return i;
	}
	public void user_editDao(user user) throws SQLException {
		QueryRunner queryrunner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update user set name=?,student_number=?,password=?,academy=?,type=?,image=?,descc=? where id=?";
		queryrunner.update(sql,user.getName(),user.getStudent_number(),user.getPassword(),user.getAcademy(),user.getType(),user.getImage(),user.getDescc(),user.getId());
	}


}
