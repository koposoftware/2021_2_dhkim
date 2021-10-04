package kr.ac.kopo.stock;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.favorite.service.FavoriteService;
import kr.ac.kopo.stock.service.StockService;
import kr.ac.kopo.vo.LikeCompanyVO;
import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.StockCodeVO;
import kr.ac.kopo.vo.StockInfoVO;
import kr.ac.kopo.vo.StockTodayVO;
import kr.ac.kopo.vo.WaggleJoinVO;
@Controller
public class StockController {
	

	@Autowired
	private StockService stockservice;
	
	@Autowired
	private FavoriteService favoriteservice;
	

	@PostMapping("/stocklist/search")
	public String stocksearch(@RequestParam(value="stock_name") String stock_name,StockTodayVO st,Model model) {
		System.out.println(stock_name);
		
		Map<String,Object> map = new HashMap<String,Object>();
		st.setStock_name(stock_name);
		 StockTodayVO vo = stockservice.stocksearch(st);
		 System.out.println(vo);
		 model.addAttribute("stock",vo);
		return "stock/stocklist";
	}
	
	
	/* 모든종목조회 */
	@GetMapping("/stocklist")
	public String stocklist(Model model) {
		System.out.println("종목조회");
		
		List<StockTodayVO> list = stockservice.stocktoday();
	
		
		model.addAttribute("stocklist", list);
		return "stock/stocklist";
	}
	
	/* 매수매도페이지 */
	@GetMapping("/stock/buysell/{code}")
	public ModelAndView buysell(@PathVariable("code") String code, HttpSession session, StockCodeVO stockcode, StockTodayVO stocktoday, StockInfoVO si) {
		LikeCompanyVO lc = new LikeCompanyVO();
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
		lc.setNo(waggle.getNo());
		lc.setStock_code(code);
		si.setStock_code(code);
		List<StockInfoVO> list = stockservice.stockinfo(si);
		boolean bool = favoriteservice.selectcompany(lc);
		ModelAndView mav = new ModelAndView("stock/buysell");
		if(bool) {//존재할경우
			mav.addObject("select",bool);
		}
		
		stockcode.setStock_code(code);
		stocktoday.setStock_code(code);

		stockcode = stockservice.companyinfo(stockcode);
		stocktoday = stockservice.stockonetoday(stocktoday);
		
		mav.addObject("stockinfo", list);
		System.out.println(list);
		mav.addObject("stockcode", stockcode);
		mav.addObject("stocktoday", stocktoday);
		return mav;
	}

	/*메수하기*/
	@PostMapping("/stock/buy/{code}")
	public ModelAndView stockbuy(@PathVariable("code") String code,HttpSession session, StockBuySellVO buysell
			,StockCodeVO stockcode, StockTodayVO stocktoday,StockInfoVO si) {
		System.out.println(code);
		WaggleJoinVO waggle = (WaggleJoinVO) session.getAttribute("waggleVO");
		buysell.setMember_account(waggle.getMember_account());
		buysell.setStock_code(code);
	
		stockservice.stockbuy(buysell);
		
		si.setStock_code(code);
		LikeCompanyVO lc = new LikeCompanyVO();
		
		lc.setNo(waggle.getNo());
		lc.setStock_code(code);
		List<StockInfoVO> list = stockservice.stockinfo(si);
		boolean bool = favoriteservice.selectcompany(lc);
		ModelAndView mav = new ModelAndView("stock/buysell");
		if(bool) {//존재할경우
			mav.addObject("select",bool);
		}
		
		stockcode.setStock_code(code);
		stocktoday.setStock_code(code);
		boolean bool2=true;
		stockcode = stockservice.companyinfo(stockcode);
		stocktoday = stockservice.stockonetoday(stocktoday);
		mav.addObject("stockinfo", list);
		mav.addObject("msg1",bool2);
		System.out.println(bool2);
		mav.addObject("stockcode", stockcode);
		mav.addObject("stocktoday", stocktoday);
		return mav;
		
	}
	
	/* 매도하기 */
	@PostMapping("/stock/sell/{code}")
	public ModelAndView stocksell(@PathVariable("code") String code,HttpSession session, StockBuySellVO buysell
			,StockCodeVO stockcode, StockTodayVO stocktoday,StockInfoVO si) {
		
		WaggleJoinVO waggle = (WaggleJoinVO) session.getAttribute("waggleVO");
		buysell.setMember_account(waggle.getMember_account());
		buysell.setStock_code(code);
		si.setStock_code(code);
		System.out.println(buysell);
		stockservice.stocksell(buysell);
	
	
		LikeCompanyVO lc = new LikeCompanyVO();
		
		lc.setNo(waggle.getNo());
		lc.setStock_code(code);
		List<StockInfoVO> list = stockservice.stockinfo(si);
		boolean bool = favoriteservice.selectcompany(lc);
		ModelAndView mav = new ModelAndView("stock/buysell");
		if(bool) {//존재할경우
			mav.addObject("select",bool);
		}
		
		stockcode.setStock_code(code);
		stocktoday.setStock_code(code);

		stockcode = stockservice.companyinfo(stockcode);
		stocktoday = stockservice.stockonetoday(stocktoday);
		mav.addObject("stockinfo", list);
		mav.addObject("msg2",true);
		mav.addObject("stockcode", stockcode);
		mav.addObject("stocktoday", stocktoday);
		return mav;
		
	}
	

	/* 기업보고서 */

	@GetMapping("/stock/report/{code}")
	public String report(@PathVariable("code") String code) {
		System.out.println("리포트");
	
		return "stock/report/"+code;
	}
	
	
	@ResponseBody
	@PostMapping("stock/close/line")
	public Map<String, Object> stockline( @RequestParam(value="stock_code") String stock_code, StockTodayVO st){
		st.setStock_code(stock_code);
		List<StockTodayVO> list= stockservice.stockline(st);
		
		Map<String, Object> map = new HashMap<String, Object>();		
		map.put("pricelist",list);
		return map;
	}
	@ResponseBody
	@PostMapping("/selectcode")
	public List<StockTodayVO> selectcode(){
		 List<StockTodayVO> list= stockservice.selectcodename();
		return list;
	}	
	@Transactional
	@ResponseBody
	@PostMapping("/insertstock")
	public void insertstock( @RequestParam(value="stock_name") String stock_name, StockBuySellVO bs, HttpSession session) {
		System.out.println("컨트롤러");
		WaggleJoinVO wg =(WaggleJoinVO) session.getAttribute("waggleVO");
	
		bs.setAcc_num(wg.getMember_account());
		bs.setStock_name(stock_name);
		
		stockservice.randomstock(bs);
		
	
	}
}
