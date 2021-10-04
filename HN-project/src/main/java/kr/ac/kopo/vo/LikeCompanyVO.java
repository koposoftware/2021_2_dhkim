package kr.ac.kopo.vo;

public class LikeCompanyVO {
	private int no;
	private String stock_code;

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getStock_code() {
		return stock_code;
	}
	public void setStock_code(String stock_code) {
		this.stock_code = stock_code;
	}
	@Override
	public String toString() {
		return "LikeCompanyVO [no=" + no + ", stock_code=" + stock_code + "]";
	}
	
	

}
