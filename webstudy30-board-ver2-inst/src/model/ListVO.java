package model;
/* 게시물 리스트 화면에 보여질 게시물 정보(회원정보포함)와
 * 페이지 처리 로직 정보 객체를 저장하는 클래스
 */

import java.util.ArrayList;

public class ListVO {
	private ArrayList<PostVO> list;
	private PagingBean pagingBean;
	
	public ListVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ListVO(ArrayList<PostVO> list, PagingBean pagingBean) {
		super();
		this.list = list;
		this.pagingBean = pagingBean;
	}
	/**
	 * @return the list
	 */
	public ArrayList<PostVO> getList() {
		return list;
	}
	/**
	 * @param list the list to set
	 */
	public void setList(ArrayList<PostVO> list) {
		this.list = list;
	}
	/**
	 * @return the pagingBean
	 */
	public PagingBean getPagingBean() {
		return pagingBean;
	}
	/**
	 * @param pagingBean the pagingBean to set
	 */
	public void setPagingBean(PagingBean pagingBean) {
		this.pagingBean = pagingBean;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ListVO [list=" + list + ", pagingBean=" + pagingBean + "]";
	}
	
}
