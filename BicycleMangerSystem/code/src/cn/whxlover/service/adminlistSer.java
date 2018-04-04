package cn.whxlover.service;

import java.sql.SQLException;
import java.util.List;

import cn.whxlover.dao.adminlistDao;
import cn.whxlover.dao.showuserlist;
import cn.whxlover.domain.PageBean;
import cn.whxlover.domain.admin;
import cn.whxlover.domain.user;

public class adminlistSer {

	public List<admin> adminlist() throws SQLException {
		adminlistDao adminlistDao = new adminlistDao();
		return adminlistDao.adminlist();
	}
	//分頁查詢所有的admin
	public PageBean<admin> userlistSer(int currentpage, int currentcount) throws SQLException {
		adminlistDao adminlistDao = new adminlistDao();
		PageBean pageBean = new PageBean();
		//封装pagebean
		//当前页private int curretPage;
		pageBean.setCurrentPage(currentpage);
		//显示的条数private int curretCount;
		pageBean.setCurrentCount(currentcount);
		//总条数private int totalCount;
		int totalCount = adminlistDao.gettotalCount();
		pageBean.setTotalCount(totalCount);
		//总页数private int totalPage;
		int totalPage = (int) Math.ceil(1.0*totalCount/currentcount);
		pageBean.setTotalPage(totalPage);
		//每页显示的数据private List<T> List = new ArrayList<T>();
		int index = (currentpage-1)*currentcount;
		List<admin> academylist = adminlistDao.adminlistForPageBean(index,currentcount);
		pageBean.setAllList(academylist);
		return pageBean;
	}

}
