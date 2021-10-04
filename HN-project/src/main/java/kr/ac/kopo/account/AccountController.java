package kr.ac.kopo.account;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.favorite.service.FavoriteService;
import kr.ac.kopo.vo.AccountDailyVO;
import kr.ac.kopo.vo.ChangeHeartVO;
import kr.ac.kopo.vo.FollowVO;
import kr.ac.kopo.vo.MyStockVO;
import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.StockTodayVO;
import kr.ac.kopo.vo.StockWeightVO;
import kr.ac.kopo.vo.WaggleJoinVO;
import kr.ac.kopo.waggle.servie.WaggleService;
@Controller
public class AccountController {
	
	@Autowired
	private AccountService service;
	
	@Autowired
	private WaggleService wservice;
	
	@Autowired
	private FavoriteService fservice;
	
	/* 내자산조회 */
	@GetMapping("/myasset")
	public String myasset(HttpSession session, Model model) {
		System.out.println("내자산");
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
		
		AccountDailyVO adailyVO = service.dailyaccount(waggle);
		List<MyStockVO> mystocklist = service.mystocklist(waggle);
	
		model.addAttribute("adaily",adailyVO);
		model.addAttribute("stocklist",mystocklist);
		for(MyStockVO list: mystocklist) {
			System.out.println(list);
		}
		return "account/myasset";
	}
	
	/* 회원번호 자산조회 */
	@GetMapping("/stock/asset/{no}")
	public String asset(@PathParam(value="no") int no, Model model) {
		
		WaggleJoinVO waggle = wservice.selectaccount(no);
		
		AccountDailyVO adailyVO = service.dailyaccount(waggle);
		List<MyStockVO> mystocklist = service.mystocklist(waggle);
	
		model.addAttribute("adaily",adailyVO);
		model.addAttribute("stocklist",mystocklist);
		
		return "stock/asset";
	}
	/* 회원번호로 거래내역 조회 */
	
	
	
	/* 보유종목 수량조회 */
	@ResponseBody
	@PostMapping("/myasset/mystock")
	public int maxsell (@RequestParam(value="stock_code") String stock_code,StockBuySellVO buysell, HttpSession session) {
		System.out.println("보유수량조회 컨트롤러");
		
		WaggleJoinVO waggle = (WaggleJoinVO) session.getAttribute("waggleVO");
		buysell.setMember_account(waggle.getMember_account());
		
		buysell.setStock_code(stock_code);
		
		
		int stocknum = service.maxsell(buysell);
		
		return stocknum;
	}
	
	
	/*잔액조회*/
	@ResponseBody
	@PostMapping("/myasset/stock/cash")
		public int maxbuy(StockBuySellVO buysell,Model model, HttpSession session) {
			System.out.println("잔액조회");
			WaggleJoinVO waggle = (WaggleJoinVO) session.getAttribute("waggleVO");
			buysell.setMember_account(waggle.getMember_account());
		
			int balance = service.maxbuy(buysell);
		
			return balance;
		}
	
	
	
	
	
		@PostMapping("/ranking/payheart")
		public String payheartrank(HttpSession session,@RequestParam(value="no") int no,
				Model model, @RequestParam(value="rank") int rank, ChangeHeartVO ch, StockBuySellVO buysell,
				FollowVO follow) {
	
			
			ch.setTono(no);
			WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
			ch.setFromno(waggle.getNo());
			
			if( rank ==1|| rank ==2 || rank==3) {
				ch.setHeart(100);
			}
			else {
			ch.setHeart(50);
			}
			service.changeheart(ch);
			WaggleJoinVO waggle2 = wservice.selectaccount(no);
			buysell.setMember_account(waggle2.getMember_account());
		
			List<StockBuySellVO> listsell = service.transsell(buysell);
			List<StockBuySellVO> listbuy = service.transbuy(buysell);

		
			follow.setMe(waggle2.getNickname());
			int followlist =service.follow(follow);
			System.out.println("팔로잉"+followlist);
			
			
			follow.setLikeman(waggle2.getNickname());
			int followerlist =service.follower(follow);
			System.out.println("팔로워"+followerlist);
			
			follow.setMe(waggle.getNickname());
		
			
			boolean bool =service.selectfollow(follow);
			
			if(bool) {
				model.addAttribute("selectf",bool);
			}
			
			
			List<StockTodayVO> lc = fservice.likecomapnylist(waggle2);
			
			List<StockWeightVO> value = wservice.wagglerankInfo(waggle2);
			List<MyStockVO> stocklist = service.mystocklist(waggle2);
			
			
			model.addAttribute("likecompany", lc);
			model.addAttribute("follow", followlist);
			model.addAttribute("follower", followerlist);
			model.addAttribute("listbuy",listbuy);
			model.addAttribute("listsell",listsell);
			model.addAttribute("waggle", waggle2);
			model.addAttribute("value", value);
			model.addAttribute("stocklist",stocklist);
			return "waggle/rankInfo";
		
		}
		
		
	
		
	}


