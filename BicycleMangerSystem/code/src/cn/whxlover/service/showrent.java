package cn.whxlover.service;

import java.sql.SQLException;
import java.util.List;

import cn.whxlover.dao.showrentlist;
import cn.whxlover.dao.showuserlist;
import cn.whxlover.domain.PageBean;
import cn.whxlover.domain.rent;
import cn.whxlover.domain.*;


public class showrent {

	public PageBean<rent> rentlistSer(int currentpage, int currentcount) throws SQLException {
		showrentlist rentlistdao = new showrentlist();
		PageBean pageBean = new PageBean();
		//封装pagebean
		//当前页private int curretPage;
		pageBean.setCurrentPage(currentpage);
		//显示的条数private int curretCount;
		pageBean.setCurrentCount(currentcount);
		//总条数private int totalCount;
		int totalCount = rentlistdao.gettotalCount();
		pageBean.setTotalCount(totalCount);
		//总页数private int totalPage;
		int totalPage = (int) Math.ceil(1.0*totalCount/currentcount);
		pageBean.setTotalPage(totalPage);
		//每页显示的数据private List<T> List = new ArrayList<T>();
		int index = (currentpage-1)*currentcount;
		List<rent> academylist = rentlistdao.typelistForPageBean(index,currentcount);
		pageBean.setAllList(academylist);
		return pageBean;
	}

	public PageBean<rent> mybbsSer(int currentpage, int currentcount, String username) throws SQLException {
		showrentlist rentlistdao = new showrentlist();
		PageBean pageBean = new PageBean();
		//封装pagebean
		//当前页private int curretPage;
		pageBean.setCurrentPage(currentpage);
		//显示的条数private int curretCount;
		pageBean.setCurrentCount(currentcount);
		//总条数private int totalCount;
		int totalCount = rentlistdao.gettotalCount();
		pageBean.setTotalCount(totalCount);
		//总页数private int totalPage;
		int totalPage = (int) Math.ceil(1.0*totalCount/currentcount);
		pageBean.setTotalPage(totalPage);
		//每页显示的数据private List<T> List = new ArrayList<T>();
		int index = (currentpage-1)*currentcount;
		List<rent> mybbs = rentlistdao.typelistForPageBean(index,currentcount,username);
		pageBean.setAllList(mybbs);
		return pageBean;
	}
	//失物招领
	public PageBean<lostfound> lostfound(int currentpage, int currentcount) throws SQLException {
		showrentlist rentlistdao = new showrentlist();
		PageBean pageBean = new PageBean();
		//封装pagebean
		//当前页private int curretPage;
		pageBean.setCurrentPage(currentpage);
		//显示的条数private int curretCount;
		pageBean.setCurrentCount(currentcount);
		//总条数private int totalCount;
		int totalCount = rentlistdao.gettotalCount1();
		pageBean.setTotalCount(totalCount);
		//总页数private int totalPage;
		int totalPage = (int) Math.ceil(1.0*totalCount/currentcount);
		pageBean.setTotalPage(totalPage);
		//每页显示的数据private List<T> List = new ArrayList<T>();
		int index = (currentpage-1)*currentcount;
		List<lostfound> loatfound = rentlistdao.lostfound(index,currentcount);
		pageBean.setAllList(loatfound);
		return pageBean;
	}
	//我的失物招领贴
	public PageBean<cn.whxlover.domain.lostfound> mybbslostSer(int currentpage, int currentcount, String username) throws SQLException {
		showrentlist rentlistdao = new showrentlist();
		PageBean pageBean = new PageBean();
		//封装pagebean
		//当前页private int curretPage;
		pageBean.setCurrentPage(currentpage);
		//显示的条数private int curretCount;
		pageBean.setCurrentCount(currentcount);
		//总条数private int totalCount;
		int totalCount = rentlistdao.gettotalCount2();
		pageBean.setTotalCount(totalCount);
		//总页数private int totalPage;
		int totalPage = (int) Math.ceil(1.0*totalCount/currentcount);
		pageBean.setTotalPage(totalPage);
		//每页显示的数据private List<T> List = new ArrayList<T>();
		int index = (currentpage-1)*currentcount;
		List<lostfound> mybbs2 = rentlistdao.bbs2listForPageBean(index,currentcount,username);
		pageBean.setAllList(mybbs2);
		return pageBean;
	}

}
