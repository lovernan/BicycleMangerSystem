package cn.whxlover.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.whxlover.domain.PageBean;
import cn.whxlover.domain.academy;
import cn.whxlover.dao.*;
public class Academyser {

	public List<academy> academylist() throws SQLException  {
		academylist academydao = new academylist();
		List<academy> academylist = academydao.academylist();
		return academylist;
	}
	//分页操作
	public PageBean academylistSer(int currentpage,int currentcount)throws SQLException {
		
		academylist academydao = new academylist();
		PageBean pageBean = new PageBean();
		//封装pagebean
		//当前页private int curretPage;
		pageBean.setCurrentPage(currentpage);
		//显示的条数private int curretCount;
		pageBean.setCurrentCount(currentcount);
		//总条数private int totalCount;
		int totalCount = academydao.gettotalCount();
		pageBean.setTotalCount(totalCount);
		//总页数private int totalPage;
		int totalPage = (int) Math.ceil(1.0*totalCount/currentcount);
		pageBean.setTotalPage(totalPage);
		//每页显示的数据private List<T> List = new ArrayList<T>();
		int index = (currentpage-1)*currentcount;
		List<academy> academylist = academydao.academylistForPageBean(index,currentcount);
		pageBean.setAllList(academylist);
		return pageBean;
	}

}
