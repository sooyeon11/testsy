package com.test.dto;

public class Pagination {

	private int listSize = 6;                //초기값으로 목록개수를 10으로 셋팅

	private int rangeSize = 6;            //초기값으로 페이지범위를 10으로 셋팅

	private int page;

	private int range;

	private int listCnt;

	private int pageCnt;

	private int startPage;

	private int startList;

	private int endPage;

	private boolean prev;

	private boolean next;

	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public int getRangeSize() {
		return rangeSize;
	}

	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRange() {
		return range;
	}

	public void setRange(int range) {
		this.range = range;
	}

	public int getListCnt() {
		return listCnt;
	}

	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getStartList() {
		return startList;
	}

	public void setStartList(int startList) {
		this.startList = startList;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public void pageInfo(int page, int range, int listCnt) {

		this.page = page;

		this.range = range;

		this.listCnt = listCnt;

		

		//전체 페이지수 

		this.pageCnt = (int) Math.ceil(listCnt/listSize);

		

		//시작 페이지

		this.startPage = (range - 1) * rangeSize + 1 ;

		

		//끝 페이지

		this.endPage = range * rangeSize;

				

		//게시판 시작번호

		this.startList = (page - 1) * listSize;

		

		//이전 버튼 상태

		this.prev = range == 1 ? false : true;

		

		//다음 버튼 상태

		this.next = endPage > pageCnt ? false : true;

		if (this.endPage > this.pageCnt) {

			this.endPage = this.pageCnt;

			this.next = false;
			
			
//			//현재 페이지
//			private int currentPage;
//
//			//페이지당 출력할 데이터 개수
//			private int cntPerPage;
//
//			//화면 하단에 출력할 페이지 사이즈
//			private int pageSize;
//
//			//전체 데이터의 갯수
//			private int totalRecordCount;
//
//			//전체 페이지의 갯수 ( ex. 데이터가 500개이고 10개씩 보여준다면 총 페이지는 50페이지 )
//			private int totalPageCount;
//			
//			//페이지 리스트의 첫 페이지 번호 ( 1~10 개면 첫페이지는 1번 )
//			private int firstPage;
//			
//			//페이지 리스트의 마지막 페이지 번호
//			private int lastPage;
//			
//			//Oracle 조건절에 사용되는 첫 ROWNUM
//			private int firstRecordIndex;
//			
//			//Oracle 조건절에 사용되는 마지막 ROWNUM
//			private int lastRecordIndex;
//			
//			//이전 페이지 존재 여부
//			private boolean hasPreviousPage;
//			
//			//다음 페이지 존재 여부
//			private boolean hasNextPage;

		}
	}
}
