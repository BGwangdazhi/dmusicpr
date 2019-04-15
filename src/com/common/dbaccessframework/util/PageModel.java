package com.common.dbaccessframework.util;

import java.util.List;

public class PageModel<E>{

	private int itemCount;
	private int totalPage;
	private int perIndex;
	private int nextIndex;
	private int curPage;
	private int pageSize;
	private List<E> reList;
	
	public int getItemCount() {
		return itemCount;
	}
	public void setItemCount(int itemCount) {
		this.itemCount = itemCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPerIndex() {
		return perIndex;
	}
	public void setPerIndex(int perIndex) {
		this.perIndex = perIndex;
	}
	public int getNextIndex() {
		return nextIndex;
	}
	public void setNextIndex(int nextIndex) {
		this.nextIndex = nextIndex;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<E> getReList() {
		return reList;
	}
	public void setReList(List<E> reList) {
		this.reList = reList;
	}
}
