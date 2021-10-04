package kr.ac.kopo.vo;

public class StockTodayVO {
	
	private String stock_code;
	private int stock_close;
	private int stock_diff;
	private String close_date;
	private String stock_name;
	private int stock_amount;  //거래량 미정
	private int value;
	private double valuediffrate;
	private String stock_type;
	private int volum;
	private double y_diff;
	private int count;
	
	
	
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getY_diff() {
		return y_diff;
	}
	public void setY_diff(double y_diff) {
		this.y_diff = y_diff;
	}
	public int getVolum() {
		return volum;
	}
	public void setVolum(int volum) {
		this.volum = volum;
	}
	public String getStock_type() {
		return stock_type;
	}
	public void setStock_type(String stock_type) {
		this.stock_type = stock_type;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	public double getValuediffrate() {
		return valuediffrate;
	}
	public void setValuediffrate(double valuediffrate) {
		this.valuediffrate = valuediffrate;
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
	public int getStock_diff() {
		return stock_diff;
	}
	public void setStock_diff(int stock_diff) {
		this.stock_diff = stock_diff;
	}
	public String getClose_date() {
		return close_date;
	}
	public void setClose_date(String close_date) {
		this.close_date = close_date;
	}
	public int getStock_amount() {
		return stock_amount;
	}
	public void setStock_amount(int stock_amount) {
		this.stock_amount = stock_amount;
	}
	@Override
	public String toString() {
		return "StockTodayVO [stock_code=" + stock_code + ", stock_close=" + stock_close + ", stock_diff=" + stock_diff
				+ ", close_date=" + close_date + ", stock_name=" + stock_name + ", stock_amount=" + stock_amount
				+ ", value=" + value + ", valuediffrate=" + valuediffrate + ", stock_type=" + stock_type + "]";
	}
	
	
	
	

}
