package kr.ac.kopo.favorite;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.bind.annotation.ResponseStatus;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.favorite.service.FavoriteService;
import kr.ac.kopo.vo.FollowVO;
import kr.ac.kopo.vo.LikeCompanyVO;
import kr.ac.kopo.vo.PortfolioVO;
import kr.ac.kopo.vo.RankListVO;
import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.StockTodayVO;
import kr.ac.kopo.vo.StockWeightVO;
import kr.ac.kopo.vo.WaggleJoinVO;
import kr.ac.kopo.waggle.servie.WaggleService;
@Controller
public class FavoriteController {


	@Autowired
	private FavoriteService service;
	
	@Autowired
	private WaggleService wservice;
	
	@Autowired AccountService aservice;
	
	
	/* 관심종목페이지 */
	@GetMapping("/like/company")
	public String myfavorite(HttpSession session, Model model) {
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
		List<StockTodayVO> st = service.likecomapnylist(waggle);
		List<StockTodayVO> rank = service.likecompanycount();
		int cnt =  service.mycountcompany(waggle);
		model.addAttribute("companylist",st);
		model.addAttribute("rank",rank);
		model.addAttribute("company",cnt);
		return "like/company";
	}
	
	
	@PostMapping("/company/delete")
	public String deletecompan(HttpSession session, Model model,@RequestParam(value="stock_code") String stock_code){
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
		StockTodayVO st = new StockTodayVO();
		st.setCount(waggle.getNo());
		st.setStock_code(stock_code);
		service.deletecompan(st);
		
		
		List<StockTodayVO> st2 = service.likecomapnylist(waggle);
		model.addAttribute("slist",st2);
		return "like/company2";
	}
	
	/*포트폴리오 등록*/
	@ResponseBody
	@GetMapping("/like/port")
	public int myport(HttpSession session, Model model, @RequestParam(value="no") int no,PortfolioVO pf) {
		WaggleJoinVO waggle =(WaggleJoinVO)session.getAttribute("waggleVO");
		//나의번호

		WaggleJoinVO waggle2 = wservice.selectaccount(no);
		//상대의 번호
		//포티폴리오 저장횟수 증가시키기
		service.increport(waggle2);
		List<StockWeightVO> valuelist = wservice.wagglerankInfo(waggle2);
		
		for(StockWeightVO a:valuelist) {
			pf.setMe(waggle.getNo());
			pf.setNo(no);
			pf.setStock_type(a.getStock_type());
			pf.setPercent(a.getValuerate());
			service.likeport(pf);
		}
		WaggleJoinVO waggle3 = wservice.selectaccount(no);
		return waggle3.getHit();
	}

	/* 포트폴리오로 추천종목뽑기 */
	
	@PostMapping("port/recom")
	public String portrecom(@RequestParam(value="day",required=false) String day,Model model,
			@RequestParam(value="nickname") String nickname, PortfolioVO pf, HttpSession session) {
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
	
		StockBuySellVO bs = new StockBuySellVO();
		bs.setMember_account(waggle.getMember_account());
		double balance =aservice.maxbuy(bs); //최대 살수 있는 금액을 알아보기 위한 현금...얼마있는지...
		
		model.addAttribute("balance",(int)balance); //잔액 공유영역에 올리기
		model.addAttribute("nickname",waggle.getNickname()); //내 닉네임 올리기
		
		pf.setMe(waggle.getNo()); //내와글번호
		pf.setNickname(nickname); //닉네임받아온거 알고자하는 포트폴리오 주인
		Map<String,List<Object>> portmap = new HashMap<String, List<Object>>();	
		
		if(day ==null) {//포트폴리오 날짜 선택하기
			Date time = new Date();
			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
			String time1 = format1.format(time);
			pf.setRegdate(time1);
			model.addAttribute("dayday", time1);
		}
		else {
			pf.setRegdate(day);
			model.addAttribute("dayday", day);
		}
		
		//내가 선택한 포트폴리오
		List<PortfolioVO> list = service.selectport2(pf);
		
		PortfolioVO pf2 = new PortfolioVO();
		System.out.println("내가선택한 포폴"+list);
		int stocknum=0;
		
		for(PortfolioVO a :list) {
			List<Object> port =new ArrayList<Object>();
		
			int tbalance = (int)(balance* a.getPercent());//총구매가능금액...
			
			pf2.setStock_type(a.getStock_type());
			List<StockTodayVO> na =service.recc(pf2);	
			System.out.println("na+"+na);
			for(StockTodayVO k: na) {
				if(tbalance> k.getStock_close()) {//총구매가능금액이 그 종목의 종가보다 크다면... ㅎ사야지
					stocknum =tbalance/k.getStock_close(); //가격/종가= 살수있는 수량
					tbalance =tbalance-(stocknum*k.getStock_close()); //남은 잔액
					
				}
				else {
					continue;
				}
				port.add(0,k.getStock_name()); //종목명, 몇주사야하는지
				port.add(1,(int)(a.getPercent()*100));
				port.add(2,stocknum);
				
			}
			portmap.put(a.getStock_type(), port);
		}
		
		model.addAttribute("port2",portmap);
		System.out.println(portmap);
		return "/like/port3";
	}

	@PostMapping("/like/companyfind")
	public String companytype(HttpSession session,@RequestParam("stock_type") String stock_type,
			StockTodayVO st, Model model) {
		System.out.println(stock_type);
		WaggleJoinVO waggle = (WaggleJoinVO) session.getAttribute("waggleVO");
		System.out.println(waggle);
		st.setCount(waggle.getNo());
		st.setStock_type(stock_type);
		List<StockTodayVO> list = service.companyliketype(st);
		System.out.println(list);
		model.addAttribute("slist", list);
		
		return "/like/company2";
	}
	
	
	@PostMapping("/money/select")
	public String money(@RequestParam("stock_type") String[] stock_type, StockTodayVO st, @RequestParam("money") int money,
			@RequestParam("percent") int[] percent,Model model) {// 종목이름이랑 원하는 가격, 퍼센트 뽑아온다...
		model.addAttribute("balance",money);
		
		//List<PortfolioVO> list = service.selectport2(pf);
		Map<String,List<Object>> portmap = new HashMap<String, List<Object>>();	
		List<Object> list = new ArrayList<Object>();
		model.addAttribute("balance",money);
	
		int stocknum=0;
		for(int i=0 ; i<stock_type.length;i++) {
			
			List<Object> port =new ArrayList<Object>();
			PortfolioVO pf2 = new PortfolioVO();
			pf2.setStock_type(stock_type[i]);
			
			List<StockTodayVO> na =service.recc(pf2);
			int mmoney = (int) (money*percent[i]/100);
		
			for(StockTodayVO k: na) {
				if(mmoney> k.getStock_close()) {//총구매가능금액이 그 종목의 종가보다 크다면... ㅎ사야지
					stocknum =mmoney/k.getStock_close(); //가격/종가= 살수있는 수량
					mmoney =mmoney-(stocknum*k.getStock_close()); //남은 잔액
					
				}
				else {
					continue;
				}
				port.add(0,k.getStock_name()); //종목명, 몇주사야하는지
				port.add(1,percent[i]);
				port.add(2,stocknum);
				
			}
			portmap.put(stock_type[i], port);
			
			
			
			
		}
		model.addAttribute("port2",portmap);
	
			return "like/port4";
	}
	
	
	
	/* 날짜별 저장한 포트폴리오보기 */
	@PostMapping("/like/port/select")
	public String selectport2(HttpSession session,PortfolioVO pf, @RequestParam(value="day",required=false) String day, Model model) {
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
		pf.setMe(waggle.getNo());	
		pf.setRegdate(day);
		model.addAttribute("dayday", day);
		Map<String,Map<String,Object>> portmap = new HashMap<String, Map<String,Object>>();		
		List<PortfolioVO> list = service.selectport(pf);	
		List<PortfolioVO> list2 = service.selectportname(pf);
		
		String nickname="" ;
		String stock_type="";
		double percent=0;
		
	
		for(PortfolioVO b: list2) {
			Map<String,Object> port =new HashMap<String,Object>();
			nickname= b.getNickname();
				
			for(PortfolioVO a: list) {
					if(a.getNickname().equals(nickname)) {
						stock_type =a.getStock_type();
						percent = a.getPercent();
						port.put(stock_type,percent);
										
				}				
				portmap.put(nickname,port);	
			}		
		}	
		model.addAttribute("port",portmap);
		
		return "/like/port2";
	}
	
	
	
	@GetMapping("/like/port/select")
	public String selectport(HttpSession session,PortfolioVO pf, Model model) {
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
		pf.setMe(waggle.getNo());
		
	
		Date time = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		String time1 = format1.format(time);
		pf.setRegdate(time1);
		
		Map<String,Map<String,Object>> portmap = new HashMap<String, Map<String,Object>>();	
		
	
		List<PortfolioVO> list = service.selectport(pf);		
		List<PortfolioVO> list2 = service.selectportname(pf);
		
		String nickname="" ;
		String stock_type="";
		double percent=0;
		
	
		for(PortfolioVO b: list2) {
			Map<String,Object> port =new HashMap<String,Object>();
			nickname= b.getNickname();

			for(PortfolioVO a: list) {
					if(a.getNickname().equals(nickname)) {
						stock_type =a.getStock_type();
						percent = a.getPercent();
						port.put(stock_type,percent);
															
				}				
				portmap.put(nickname,port);					
			}		
		}				
		model.addAttribute("port",portmap);
		return "/like/port";
	}
	
	
	/* 관심유저 */
	@Transactional
	@GetMapping("/like/follow")
	public String myfollow(HttpSession session,Model model, FollowVO follow) {
		
		List<FollowVO> list= service.follower3();
		model.addAttribute("follower3",list);
		
		//나의 팔로워정보
		WaggleJoinVO wj = (WaggleJoinVO) session.getAttribute("waggleVO");
		follow.setMe(wj.getNickname());
		int followlist =aservice.follow(follow);
		follow.setLikeman(wj.getNickname());
		int followerlist =aservice.follower(follow);
		model.addAttribute("follow",followlist);
		model.addAttribute("follower",followerlist);

	
		List<RankListVO> rank =service.myfollower(wj);
		
		List<RankListVO> rank2 =service.myfollow(wj);
		model.addAttribute("myfollower",rank);
		model.addAttribute("myfollow",rank2);
		model.addAttribute("wj",wj);
		
		System.out.println(list);
		return "like/follow";
	}
	
	/* 관심유저등록 */
	@ResponseBody
	@GetMapping("/like/follow/{no}")
	public int insertfollow(HttpSession session,@PathVariable("no") int no, FollowVO fl) {
	
		WaggleJoinVO waggle =(WaggleJoinVO)session.getAttribute("waggleVO");
		fl.setMe(waggle.getNickname());
		
		WaggleJoinVO waggle2 = wservice.selectaccount(no);
		fl.setLikeman(waggle2.getNickname());
		
		service.insertlikeman(fl);
		FollowVO f2 = new FollowVO();
		f2.setLikeman(waggle2.getNickname());
		List<FollowVO> list = service.selectfollow(f2);
		
		return list.size();
	}


	/* 관심유저등록 취소 */
	@ResponseBody
	@GetMapping("/like/followback/{no}")
	public int deletefollow(HttpSession session,@PathVariable("no") int no, FollowVO fl) {
	
		WaggleJoinVO waggle =(WaggleJoinVO)session.getAttribute("waggleVO");
		fl.setMe(waggle.getNickname());
		
		WaggleJoinVO waggle2 = wservice.selectaccount(no);
		fl.setLikeman(waggle2.getNickname());
		
		service.deletelikeman(fl);
		FollowVO f2 = new FollowVO();
		f2.setLikeman(waggle2.getNickname());
		List<FollowVO> list = service.selectfollow(f2);
		
		return list.size();
	}

	/* 팔로잉관두기 */
	
	@PostMapping("/like/deletefollow2")
	public String deletefollow2(HttpSession session, FollowVO fl,Model model, @RequestParam(value="no") int no) {
	
		WaggleJoinVO waggle =(WaggleJoinVO)session.getAttribute("waggleVO");
		fl.setMe(waggle.getNickname());
		
		WaggleJoinVO waggle2 = wservice.selectaccount(no);//그만두려는 사람 닉네임가져와
		fl.setLikeman(waggle2.getNickname()); 
		
		service.deletelikeman(fl);
		List<RankListVO> rank2 =service.myfollow(waggle);
		
		model.addAttribute("myfollow",rank2);
		return "/like/follow2";
	}
	
	/* 팔로워차단하기 */
	
	@PostMapping("/like/deletefollower2")
	public String deletefollower2(HttpSession session,@RequestParam(value="no") int no, FollowVO fl,Model model) {
	System.out.println("컨트롤러");
	System.out.println("deletefollower2컨트롤러");
		WaggleJoinVO waggle =(WaggleJoinVO)session.getAttribute("waggleVO");
		fl.setLikeman(waggle.getNickname());
		
		WaggleJoinVO waggle2 = wservice.selectaccount(no);
		fl.setMe(waggle2.getNickname());
		
		service.deletelikeman(fl);
		List<RankListVO> rank2 =service.myfollower(waggle);
		System.out.println(rank2);
		System.out.println("팔로우관두기");
		model.addAttribute("myfollower",rank2);
		return "like/follow2";
	}
	
	
	
	
	/* 기업관심등록 */
	@ResponseBody
	@GetMapping("/like/{code}")
	public void insertlike(HttpSession session, @PathVariable("code") String code,LikeCompanyVO lc) {
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
		lc.setNo(waggle.getNo());
		lc.setStock_code(code);
		service.insertlike(lc);
		
	}
	
	/* 관심등록취소 */
	@ResponseBody
	@GetMapping("/unlike/{code}")
	public void unlike(HttpSession session, @PathVariable("code") String code,LikeCompanyVO lc) {
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
		lc.setNo(waggle.getNo());
		lc.setStock_code(code);
		service.unlike(lc);
	}
	


}
			
