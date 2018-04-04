package cn.whxlover.service;

import java.sql.SQLException;
import java.util.List;

import cn.whxlover.dao.academylist;
import cn.whxlover.dao.typelistDao;
import cn.whxlover.domain.PageBean;
import cn.whxlover.domain.academy;
import cn.whxlover.domain.typemain;

public class typeSer {

	public PageBean<typemain> typelistSer(int currentpage, int currentcount) throws SQLException {
		
		typelistDao typelistdao = new typelistDao();
		PageBean pageBean = new PageBean();
		//封装pagebean
		//当前页private int curretPage;
		pageBean.setCurrentPage(currentpage);
		//显示的条数private int curretCount;
		pageBean.setCurrentCount(currentcount);
		//总条数private int totalCount;
		int totalCount = typelistdao.gettotalCount();
		pageBean.setTotalCount(totalCount);
		//总页数private int totalPage;
		int totalPage = (int) Math.ceil(1.0*totalCount/currentcount);
		pageBean.setTotalPage(totalPage);
		//每页显示的数据private List<T> List = new ArrayList<T>();
		int index = (currentpage-1)*currentcount;
		List<typemain> academylist = typelistdao.typelistForPageBean(index,currentcount);
		pageBean.setAllList(academylist);
		return pageBean;
	}

}
