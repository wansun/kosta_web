package model;

public class PagingBean {
	private int startPage;
	private int endPage;
	private int nowPage;
	
	public PagingBean() {
		super();
	}

	public PagingBean(int startPage, int endPage, int nowPage) {
		super();
		this.startPage = startPage;
		this.endPage = endPage;
		this.nowPage = nowPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	
}
