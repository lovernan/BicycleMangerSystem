package cn.whxlover.domain;
import java.util.*;
//分页操作的pagebean
public class PageBean<T> {
	//当前页
	private int currentPage;
	//显示的条数
	private int currentCount;
	//总条数
	private int totalCount;
	//总页数
	private int totalPage;
	//每页显示的数据
	private List<T> allList = new ArrayList<T>();
	public List<T> getAllList() {
		return allList;
	}
	public void setAllList(List<T> allList) {
		this.allList = allList;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getCurrentCount() {
		return currentCount;
	}
	public void setCurrentCount(int currentCount) {
		this.currentCount = currentCount;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	
	
}
