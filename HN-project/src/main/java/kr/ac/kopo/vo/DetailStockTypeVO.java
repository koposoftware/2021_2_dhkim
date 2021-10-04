package kr.ac.kopo.vo;

public class DetailStockTypeVO {

	private String acc_num;
	private int stock_close;
	private String stock_code;
	private int stock_num;
	private int buyprice;
	private double profit;
	private double stockrate;
	private String stock_type;
	private String stock_name;
	
	
	
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
	public int getStock_close() {
		return stock_close;
	}
	public void setStock_close(int stock_close) {
		this.stock_close = stock_close;
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
	public int getBuyprice() {
		return buyprice;
	}
	public void setBuyprice(int buyprice) {
		this.buyprice = buyprice;
	}
	public double getProfit() {
		return profit;
	}
	public void setProfit(double profit) {
		this.profit = profit;
	}
	public double getStockrate() {
		return stockrate;
	}
	public void setStockrate(double stockrate) {
		this.stockrate = stockrate;
	}
	public String getStock_type() {
		return stock_type;
	}
	public void setStock_type(String stock_type) {
		this.stock_type = stock_type;
	}
	@Override
	public String toString() {
		return "DetailStockTypeVO [acc_num=" + acc_num + ", stock_close=" + stock_close + ", stock_code=" + stock_code
				+ ", stock_num=" + stock_num + ", buyprice=" + buyprice + ", profit=" + profit + ", stockrate="
				+ stockrate + ", stock_type=" + stock_type + ", stock_name=" + stock_name + "]";
	}
	
	
	
}
