package entity;

public class Pager {
	private int pageNo; //��ǰҳ
	private int pageCount;//��ҳ��
	private int pageSize=5;//ÿҳ��ʾ�ļ�¼
	private int btnCount=5;//��ҳ��ť�ĸ���
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
