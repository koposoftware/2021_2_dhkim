package kr.ac.kopo.vo;

public class MyStockVO {
	
	private String acc_num;
	private String stock_name;
	private String stock_code;
	private int stock_close;
	private int stock_num;
	private int buyprice; //매입단가
	private int stock_diff;
	private double stock_diff_rate;
	private int stock_value;
	
	
	
	
	public String getAcc_num() {
		return acc_num;
	}
	public void setAcc_num(String acc_num) {
		this.acc_num = acc_num;
	}
	public String getStock_name() {
		return stock_name;
	}
	public void setStock_name(String stock_name) {
		this.stock_name = stock_name;
	}
	public String getStock_code() {
		return stock_code;
	}
	public void setStock_code(String stock_code) {
		this.stock_code = stock_code;
	}
	public int getStock_close() {
		return stock_close;
	}
	public void setStock_close(int stock_close) {
		this.stock_close = stock_close;
	}
	public int getStock_num() {
		return stock_num;
	}
	public void setStock_num(int stock_num) {
		this.stock_num = stock_num;
	}
	public int getBuyprice() {
		return buyprice;
	}
	public void setBuyprice(int buyprice) {
		this.buyprice = buyprice;
	}
	public int getStock_diff() {
		return stock_diff;
	}
	public void setStock_diff(int stock_diff) {
		this.stock_diff = stock_diff;
	}
	public double getStock_diff_rate() {
		return stock_diff_rate;
	}
	public void setStock_diff_rate(double stock_diff_rate) {
		this.stock_diff_rate = stock_diff_rate;
	}
	
	
	
	public int getStock_value() {
		return stock_value;
	}
	public void setStock_value(int stock_value) {
		this.stock_value = stock_value;
	}
	@Override
	public String toString() {
		return "MyStockVO [acc_num=" + acc_num + ", stock_name=" + stock_name + ", stock_code=" + stock_code
				+ ", stock_close=" + stock_close + ", stock_num=" + stock_num + ", buyprice=" + buyprice
				+ ", stock_diff=" + stock_diff + ", stock_diff_rate=" + stock_diff_rate + ", stock_value=" + stock_value
				 +"]";
	}
	
	
	
	
	
	
}
