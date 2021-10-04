package kr.ac.kopo.vo;

public class StockBuySellVO {
	private String member_account;
	private String stock_code;
	private int stock_num;
	private int fee;
	private int stock_price;
	private String stock_type;
	private String tra_date;
	private String tra_type;
	private String acc_num;
	private String stock_name;
	private double rate;
	
	
	
	
	
	
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public String getStock_name() {
		return stock_name;
	}
	public void setStock_name(String stock_name) {
		this.stock_name = stock_name;
	}
	public String getAcc_num() {
		return acc_num;
	}
	public void setAcc_num(String acc_num) {
		this.acc_num = acc_num;
	}
	public String getMember_account() {
		return member_account;
	}
	public void setMember_account(String member_account) {
		this.member_account = member_account;
	}
	public String getStock_code() {
		return stock_code;
	}
	public void setStock_code(String stock_code) {
		this.stock_code = stock_code;
	}
	public int getStock_num() {
		return stock_num;
	}
	public void setStock_num(int stock_num) {
		this.stock_num = stock_num;
	}
	public float getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	
	
	public String getStock_type() {
		return stock_type;
	}
	public void setStock_type(String stock_type) {
		this.stock_type = stock_type;
	}
	public String getTra_date() {
		return tra_date;
	}
	public void setTra_date(String tra_date) {
		this.tra_date = tra_date;
	}
	public String getTra_type() {
		return tra_type;
	}
	public void setTra_type(String tra_type) {
		this.tra_type = tra_type;
	}
	public int getStock_price() {
		return stock_price;
	}
	public void setStock_price(int stock_price) {
		this.stock_price = stock_price;
	}
	@Override
	public String toString() {
		return "StockBuySellVO [member_account=" + member_account + ", stock_code=" + stock_code + ", stock_num="
				+ stock_num + ", fee=" + fee + ", stock_price=" + stock_price + ", stock_type=" + stock_type
				+ ", tra_date=" + tra_date + ", tra_type=" + tra_type + ", acc_num=" + acc_num + ", stock_name="
				+ stock_name + ", rate=" + rate + "]";
	}
	
	
}
