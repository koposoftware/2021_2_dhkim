package kr.ac.kopo.vo;

public class PortfolioVO {
	
	private int seq_no;
	private int me;
	private int no;
	private double percent;
	private String stock_type;
	private String regdate;
	private String nickname;
	private int count;
	
	
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getSeq_no() {
		return seq_no;
	}
	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}
	public int getMe() {
		return me;
	}
	public void setMe(int me) {
		this.me = me;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public double getPercent() {
		return percent;
	}
	public void setPercent(double percent) {
		this.percent = percent;
	}
	public String getStock_type() {
		return stock_type;
	}
	public void setStock_type(String stock_type) {
		this.stock_type = stock_type;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "PortfolioVO [seq_no=" + seq_no + ", me=" + me + ", no=" + no + ", percent=" + percent + ", stock_type="
				+ stock_type + ", regdate=" + regdate + ", nickname=" + nickname + ", count=" + count + "]";
	}
	
	
	

}
