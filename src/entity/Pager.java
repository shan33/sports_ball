package entity;

public class Pager {
	private int pageNo; //当前页
	private int pageCount;//总页数
	private int pageSize=5;//每页显示的记录
	private int btnCount=5;//分页按钮的个数
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getBtnCount() {
		return btnCount;
	}
	public void setBtnCount(int btnCount) {
		this.btnCount = btnCount;
	}

}
