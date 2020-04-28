package cn.softeem.xzms.vo;


public class PageVo {

	private int pageRow; //每页显示行数
	private int pageCount; //总页数
	private int pageNow; //当前页
	private int row; //总记录数
	private int startRow; //起始行数

	public PageVo(int pageRow, int pageNow, int row) {
		super();
		this.pageRow = pageRow;
		this.row = row;
		
		this.setPageCount(row); //计算总页数
		this.setPageNow(pageNow); //判断当前页数	
		this.setStartRow();  //计算起始行数
	}
	
	public int getStartRow() {
		return startRow;
	}

	//计算起始行数
	public void setStartRow() {
		this.startRow = (pageNow - 1) * pageRow;
	}

	public int getRow() {
		return row;
	}

	public void setRow(int row) {
		this.row = row;
	}

	public PageVo() {
		super();
	}

	public int getPageRow() {
		return pageRow;
	}

	public void setPageRow(int pageRow) {
		this.pageRow = pageRow;
	}

	public int getPageCount() {
		return pageCount;
	}

	//计算总页数 int row : 表的总记录数
	public void setPageCount(int row) {
		if(row % pageRow == 0){
			pageCount = row / pageRow;
		}else{
			pageCount = row / pageRow + 1;
		}
	}

	public int getPageNow() {
		return pageNow;
	}

	//判断当前页数
	public void setPageNow(int pageNow) {
		if(pageNow <= 1){
			this.pageNow = 1;
		}else if(pageNow >= pageCount){
			this.pageNow = pageCount;
		}else{
			this.pageNow = pageNow;
		}
	}
}
