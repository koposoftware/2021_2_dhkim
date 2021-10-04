package kr.ac.kopo;

import java.util.Arrays;
import java.util.HashMap;

import org.json.simple.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.stock.dao.StockDAO;
import kr.ac.kopo.vo.MyStockVO;
import kr.ac.kopo.vo.StockCodeVO;
import kr.ac.kopo.vo.StockTodayVO;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:config/spring/spring-mvc.xml"})
public class ValueCrawler{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	private StockDAO mapper;
	
	@Ignore
	@Test
	public void insertvalue() throws Exception{
	

	//String[] aa = mapper.selectcode();
	//for(int i=0; i<aa.length-1;i++) {
		
	//System.out.println(Arrays.toString(aa));
	
	
	String code1="A";
	String code2="010400";
	String code=code1+code2;//회사코드
	double roe; //최종roe
	double roe1 = 0 ; //3년전 roe
	double roe2=0; //2년전 roe
	double roe3=0; //최근 roe
	double equity=0; //자기자본
	double rate1=0; //회사채이율
	double stock=0; //유통주식수
	int stock3=0;
	
	String URL1="https://www.kisrating.com/ratingsStatistics/statics_spread.do";
	Document doc1=null;
	
	String URL2="http://comp.fnguide.com/SVO2/ASP/SVD_Main.asp?pGB=1&gicode="+code+
			"&cID=&MenuYn=Y&ReportGB=&NewMenuID=101&stkGb=701";
	Document doc2=null;
	
	String URL3="https://asp01.fnguide.com/SVO2/asp/SVD_Main.asp?pGB=1&gicode="
			+ code+"&cID=&MenuYn=Y&ReportGB=&NewMenuID=101&stkGb=701";
	Document doc3=null;
	Document doc4=null;

	try {
		doc1 = Jsoup.connect(URL1).get();
		
		Elements eles = doc1.select("#con_tab1 > div.table_ty1 > table > tbody > tr:nth-child(11) > td:nth-child(9)");
		
		String[] rate = eles.text().split(" ");
		rate1 =Double.parseDouble(rate[0].replaceAll("\\.", ""))/10000;
			
		
		doc2 = Jsoup.connect(URL2).get();			
		Elements eles1 = doc2.select(".us_table_ty1 > tbody> tr:nth-child(7)> td.r"); 
		String[] issue = eles1.text().split("/ ");
		
		
		int stock1 =Integer.parseInt(issue[0].replaceAll(",", ""));			
	
		Elements eles2 = doc2.select(".us_table_ty1 > tbody>tr:nth-child(5)>td.r");
		String[] myissue=eles2.text().split(" ");
		
		try{
			stock3 =Integer.parseInt(myissue[9].replaceAll(",", ""));
		}
		catch(Exception e){
			stock3=0;
		}
		stock = stock1-stock3;		
	
		doc3 = Jsoup.connect(URL3).get();
		Elements eles3 = doc3.select("#highlight_D_Y > table > tbody > tr:nth-child(10) > td:nth-child(6)");
		
	
		equity =Double.parseDouble(eles3.text().replaceAll(",",""))*100000000;
	
		doc4 = Jsoup.connect(URL3).get();
		Elements eles4 =doc4.select("#highlight_D_A > table > tbody > tr:nth-child(18) > td:nth-child(2)");
		Elements eles5 =doc4.select("#highlight_D_A > table > tbody > tr:nth-child(18) > td:nth-child(3)");
		Elements eles6 =doc4.select("#highlight_D_A > table > tbody > tr:nth-child(18) > td:nth-child(4)");
		String roearr1 = eles4.text();
		String roearr2 = eles5.text();
		String roearr3 = eles6.text();

		roe1 =Double.parseDouble(roearr1.replaceAll("\\.", ""))/100;
		roe2 =Double.parseDouble(roearr2.replaceAll("\\.", ""))/100;
		roe3 =Double.parseDouble(roearr3.replaceAll("\\.", ""))/100;
		
	}
		
	catch(Exception e) {
		e.printStackTrace();
	}
	
	if (roe1<roe2 && roe2<roe3)
		roe=roe3/100;
	else if(roe1>roe2 && roe2>roe3)	{
		roe=roe3/100;
	}
	else {
		roe =(roe1+(roe2*2)+(roe3*3))/6/100;		
	}

	double totalvalue = (equity +(equity*(roe-rate1))/rate1);

	int value = (int) (totalvalue/stock);

	StockCodeVO stc = new StockCodeVO();	
		
	stc.setValue(value);
	stc.setStock_code(code2);
	
	
	
	Thread.sleep(5000); 
	
	sqlSessionTemplate.insert("stock.StockDAO.insertvalue",stc);
	
	}
	
	@Ignore
	@Test
	public void inserclose() throws Exception{
		
		
		try {
	String[] aa = mapper.selectcode();
	for(int i=0; i<aa.length;i++) {
		
		String code=aa[i];
		String URL3="https://finance.naver.com/item/frgn.nhn?code="+code+"&page=1";
		Document doc3;
	
		int close=0;
		int diff=0;
		int volum=0;
		double y_diff =0.0;
		String stockname=null;
		String closedate = null;
		
		try {
			
			doc3 = Jsoup.connect(URL3).get();
			Elements eles3 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(5) > td:nth-child(2) > span");
	
			try{
				
				close = Integer.parseInt(eles3.text().replaceAll(",",""));
			}catch(Exception e) {
				close=Integer.parseInt(eles3.text());
			}
					
			Elements eles4 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(5) > td:nth-child(3) > span");
					
			try{
				
				diff= Integer.parseInt(eles4.text().replaceAll(",",""));
			}catch(Exception e) {
				diff=Integer.parseInt(eles4.text());
			}
			
		
			Elements eles9 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(5) > td:nth-child(4) > span");

			y_diff =Double.parseDouble(eles9.text().replaceAll("%",""));
			
			
			Elements eles5 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(5) > td:nth-child(4) > span");

			String alpha = Character.toString(eles5.text().charAt(0));
			if(alpha.equals("-")) {
				diff=-diff;
				
			}
			
			
			Elements eles8 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(5) > td:nth-child(5) > span");
				try{
				
				volum= Integer.parseInt(eles8.text().replaceAll(",",""));
			}catch(Exception e) {
				volum=Integer.parseInt(eles8.text());
			}
			
			Elements eles6 = doc3.select("#middle > div.h_company > div.wrap_company > h2 > a");
		
			stockname=eles6.text();

			Elements eles7 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(5) > td.tc > span");
			closedate = eles7.text();
			System.out.println(closedate);
			
		}
			
		catch(Exception e) {
			e.printStackTrace();
		}
		StockTodayVO st =new StockTodayVO();
	
		st.setClose_date(closedate);
		st.setStock_code(aa[i]);
		st.setStock_close(close);
		st.setStock_diff(diff);
		st.setStock_name(stockname);
		st.setY_diff(y_diff);
		st.setVolum(volum);
		
		
		sqlSessionTemplate.insert("stock.StockDAO.insertclose2",st);
		
		Thread.sleep(2000); 
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	@Test
	@Scheduled(cron = "0 45 16 ? * MON-FRI")
	public void testsc() {
		System.out.println("grgr");
	}
	
	
	
	
	
	
	
	
	
	
	@Ignore
	@Test
	public void infoinsert() throws Exception{
		
		
		try {
			
	String[] aa = mapper.selectcode();
	for(int i=0; i<aa.length;i++) {
	
		String code=aa[i];
		String URL3="http://media.kisline.com/highlight/mainHighlight.nice?paper_stock="+code+"&nav=1";
		Document doc3;
		String text1 ="";
		String text2=null;
		String text3=null;
		
		try {
			
			doc3 = Jsoup.connect(URL3).get();
			Elements eles3 = doc3.select("#tcaFVlanREZS > table:nth-child(2) > tbody > tr:nth-child(1) > td.num.ext2");
		
			
		
		  text1 = eles3.text().replaceAll("<li>","").replaceAll("</li>", "").replaceAll("-",""); System.out.println(text1);
		 
		  Elements eles4 = doc3.select("#h09 > table > tbody > tr > td.first > ul > li:nth-child(2)");
		  text2 = eles4.text().replaceAll("<li>","").replaceAll("</li>","").replaceAll("-",""); System.out.println(text2);
		  
		  
		  Elements eles5 =doc3.select("#h09 > table > tbody > tr > td.first > ul > li:nth-child(3)");
		  text3 = eles5.text().replaceAll("<li>","").replaceAll("</li>","").replaceAll("-",""); System.out.println(text3);
	
		}
	
		catch(Exception e) {
			e.printStackTrace();
		}
		
		StockCodeVO st = new StockCodeVO();
		st.setStock_code(aa[i]);
		st.setStocktext1(text1);
		st.setStocktext2(text2);
		st.setStocktext3(text3);
		sqlSessionTemplate.insert("stock.StockDAO.inserttext",st);

		
		Thread.sleep(2000); 
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
		
	

}

