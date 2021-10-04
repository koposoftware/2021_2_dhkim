package kr.ac.kopo.vo;

public class StockInfoVO {
	private String stock_code;
	private String stocktext1;
	private String stocktext2;
	private String stocktext3;
	public String getStock_code() {
		return stock_code;
	}
	public void setStock_code(String stock_code) {
		this.stock_code = stock_code;
	}
	public String getStocktext1() {
		return stocktext1;
	}
	public void setStocktext1(String stocktext1) {
		this.stocktext1 = stocktext1;
	}
	public String getStocktext2() {
		return stocktext2;
	}
	public void setStocktext2(String stocktext2) {
		this.stocktext2 = stocktext2;
	}
	public String getStocktext3() {
		return stocktext3;
	}
	public void setStocktext3(String stocktext3) {
		this.stocktext3 = stocktext3;
	}
	@Override
	public String toString() {
		return "StockInfoVO [stock_code=" + stock_code + ", stocktext1=" + stocktext1 + ", stocktext2=" + stocktext2
				+ ", stocktext3=" + stocktext3 + "]";
	}
	
	
	
	
	
	

}
