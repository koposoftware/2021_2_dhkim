package kr.ac.kopo.waggle;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.websocket.server.PathParam;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.favorite.service.FavoriteService;
import kr.ac.kopo.vo.AccountDailyVO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.AddHeartVO;
import kr.ac.kopo.vo.CouponVO;
import kr.ac.kopo.vo.DetailStockTypeVO;
import kr.ac.kopo.vo.FollowVO;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.MyStockVO;
import kr.ac.kopo.vo.RankListVO;
import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.StockTodayVO;
import kr.ac.kopo.vo.StockWeightVO;
import kr.ac.kopo.vo.WaggleJoinVO;
import kr.ac.kopo.waggle.servie.WaggleService;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@SessionAttributes({"waggleVO"})
@Controller
public class WaggleController {
	@Autowired
	private WaggleService service;
	
	@Autowired
	private AccountService accountservice;
	
	@Autowired
	private FavoriteService favoriteservice;
	
	
	@GetMapping("/lotto")public String dd() {
		return "lotto";
	}
	
	/* 와글와글메인 */
	@GetMapping("/waggle")
	public String wagglemain() {
		return "waggle/wagglemain";
	}
	
	
	/* 와글와글 쿠폰메인 */
	@Transactional
	@GetMapping("/waggle/coupon")
	public String wagglecoupon(HttpSession session, Model model) {
		WaggleJoinVO waggleVO = (WaggleJoinVO) session.getAttribute("waggleVO");
		AccountDailyVO ad = service.selectacc(waggleVO);//현금 구하기
		List<CouponVO> couponlist = service.selectcoupon(waggleVO.getNo());//쿠폰리스트 구하기
		
		model.addAttribute("mycoupon", couponlist); //쿠폰 어느정도있나
		model.addAttribute("cash",ad.getTcash()); //현금구하기
		model.addAttribute("myheart",waggleVO.getHart());//하트 구하기
		return "waggle/coupon";
	}
	
	/* 와글와글 가입화면 */
	@GetMapping("/waggle/join")
	public String wagglejoin(HttpSession session, Model model) {
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		
		List<AccountVO> list = accountservice.myaccount(userVO);
		model.addAttribute("accountlist", list);
		return "waggle/join";
	}
	
	
	/* 와글와글 일회성 하트 충전 */
	@Transactional
	@ResponseBody
	@PostMapping("/heart/pay")
	public Map<String,Object> addheart(HttpSession session,AddHeartVO heartvo, @RequestParam(value="price") int price,@RequestParam(value="heart") int heart) {
		WaggleJoinVO waggleVO = (WaggleJoinVO)session.getAttribute("waggleVO");
		
		heartvo.setAnum(waggleVO.getMember_account());
		heartvo.setNo(waggleVO.getNo());
		heartvo.setMoney(price);
		heartvo.setHeart(heart);
		service.addHeart(heartvo);
		this.msgSend(heart);
		
			System.out.println("충전하트....몇개.."+heart);
		waggleVO.setHart(waggleVO.getHart()+heart);
		System.out.println("총하트 :"+waggleVO.getHart()+heart
				);
		session.setAttribute("waggleVO", waggleVO);
		Map<String, Object> map = new HashMap<String, Object>();
	
		
		map.put("myheart",waggleVO.getHart());//하트
		AccountDailyVO ad = service.selectacc(waggleVO); //계좌잔액조회
		map.put("myprice",ad.getTcash());
		return map;
	}
	
	/* 문자메세지보냄 */
	public void msgSend(int heart) { 
		String api_key = "NCSP5MNQPQYFNCZ1"; 
		//사이트에서 발급 받은 API KEY 
		String api_secret = "A3Z03VRIDFHTJPPNW20TZL67MHRRQVFY";
		//사이트에서 발급 받은 API SECRET KEY 
		Message coolsms = new Message(api_key, api_secret); 
		HashMap<String, String> params = new HashMap<String, String>(); 
		params.put("to", "01038803302");
		params.put("from", "01038803302"); //사전에 사이트에서 번호를 인증하고 등록하여야 함 
		params.put("type", "SMS"); 
		params.put("text", "[하나팔로우] 34,800원으로 하트 "+heart+"개를 구매하셨습니다."); //메시지 내용
		params.put("app_version", "test app 1.2");
		
		  try { JSONObject obj = (JSONObject) coolsms.send(params);
		  System.out.println(obj.toString()); //전송 결과 출력
		  } catch (CoolsmsException e) {
		  System.out.println(e.getMessage()); System.out.println(e.getCode()); }
		 
		}
	
	
	
	/* 와글와글 가입 데이터 넘기기 */
	@PostMapping("/waggle/join")
	public String wirte(@Valid WaggleJoinVO waggle, HttpSession session, Model model) {
		//아이디		
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");//로그인정보가져오기

		waggle.setMember_id(userVO.getMember_id());
		service.join(waggle);//와글 가입
		
			session.setAttribute("waggleVO", waggle); //와글정보 세션 등록
			session.setAttribute("msg", true);
		
		
		return "redirect:/waggle/join";
	}
	

	/* 와글와글 랭킹 개인정보 */
	@Transactional
	@GetMapping("/waggle/rankInfo/{no}")
	public String wagglerankInfo(@PathVariable("no") int no,HttpSession session, Model model, StockBuySellVO buysell, FollowVO follow) {
		WaggleJoinVO waggle = service.selectaccount(no);
		buysell.setMember_account(waggle.getMember_account());
	
		List<StockBuySellVO> listsell = accountservice.transsell(buysell);
		List<StockBuySellVO> listbuy = accountservice.transbuy(buysell);

		
		follow.setMe(waggle.getNickname());
		int followlist =accountservice.follow(follow);

		follow.setLikeman(waggle.getNickname());
		int followerlist =accountservice.follower(follow);
		System.out.println(followerlist);
		WaggleJoinVO waggle2 =(WaggleJoinVO) session.getAttribute("waggleVO");
		follow.setMe(waggle2.getNickname());
	
		
		boolean bool = accountservice.selectfollow(follow);
		
		if(bool) {
			model.addAttribute("selectf",bool);
		}
		
		
		List<StockTodayVO> lc = favoriteservice.likecomapnylist(waggle);
		
		List<StockWeightVO> value = service.wagglerankInfo(waggle);
		List<MyStockVO> stocklist = accountservice.mystocklist(waggle);
		
		
		model.addAttribute("likecompany", lc);
		model.addAttribute("follow", followlist);
		model.addAttribute("follower", followerlist);
		model.addAttribute("listbuy",listbuy);
		model.addAttribute("listsell",listsell);
		model.addAttribute("waggle", waggle);
		model.addAttribute("value", value);
		model.addAttribute("stocklist",stocklist);
		return "waggle/rankInfo";
	}
	
	
	/* 주식비중구하기 파이차트*/
	@Transactional
	@ResponseBody
	@PostMapping("/waggle/rankInfo/piechart")
	public Map<String, Object> piechart(@RequestParam(value="no") int no, HttpSession session){
	
		WaggleJoinVO waggle = service.selectaccount(no);
		WaggleJoinVO waggle2 =(WaggleJoinVO)session.getAttribute("waggleVO");//나
		
		List<StockWeightVO> valuelist = service.wagglerankInfo(waggle);
		List<AccountDailyVO> ratelist = service.wagglerateInfo(waggle);//상대방 날짜:수익률
		List<AccountDailyVO> ratelist2 = service.wagglerateInfo(waggle2);//나 날짜: 수익률	
	
		Map<String, Object> map = new HashMap<String, Object>();		
		map.put("valuelist",valuelist);
		map.put("rateme",ratelist);
		map.put("rateanother",ratelist2);
		return map;
		
	}
	
	
	
	
	/* 계좌번호로 수익률 매일 조회하기 */
	@ResponseBody
	@PostMapping("/waggle/rankInfo/linechart")
	public Map<String, Object> linechart(@RequestParam(value="no") int no,HttpSession session){
		WaggleJoinVO waggle = service.selectaccount(no);//상대방
		WaggleJoinVO waggle2 =(WaggleJoinVO)session.getAttribute("waggleVO");//나
		
		List<AccountDailyVO> ratelist = service.wagglerateInfo(waggle);//상대방 날짜:수익률
		List<AccountDailyVO> ratelist2 = service.wagglerateInfo(waggle2);//나 날짜: 수익률																	//나 날짜:수익률
		Map<String, Object> map = new HashMap<String, Object>();		
		
		map.put("rateme",ratelist);
		map.put("rateanother",ratelist2);
		return map;
		
	}
	
	
	
	/* 와글와글 랭킹 순위 */
	@GetMapping("waggle/ranking")
	public String waggleranking(Model model,HttpSession session) {
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
		
		List<RankListVO> list = service.wagglerank();
		RankListVO mylist= service.wagglemyrank(waggle);//나의리스트 작성하기
		List<RankListVO> valuelist = service.wagglevalue();
		RankListVO myvalue= service.mystockvaluek(waggle);//나의리스트 작성하기
		model.addAttribute("valuelist",valuelist);
		model.addAttribute("ranklist", list);
		model.addAttribute("mylist",mylist);
		model.addAttribute("myvalue",myvalue);
		return "waggle/ranking";
	}
	
	
	/* 쿠폰사기 */
	@Transactional
	@ResponseBody
	@PostMapping("/use/heart")
	public Map<String, Object>  change(HttpSession session,CouponVO couponvo, @RequestParam(value="heart") int heart) {

		WaggleJoinVO waggleVO = (WaggleJoinVO)session.getAttribute("waggleVO");
		couponvo.setNo(waggleVO.getNo());
	
		service.change(couponvo);	
		
		waggleVO.setHart(waggleVO.getHart()-heart);
		session.setAttribute("waggleVO", waggleVO);
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("hheart", waggleVO.getHart());
		return map;
	}
	
	/*쿠폰조회하기*/
	@PostMapping("/couponlist")
	public String couponlist(Model modal,CouponVO couponvo, HttpSession session) {
		WaggleJoinVO waggleVO = (WaggleJoinVO) session.getAttribute("waggleVO");

		List<CouponVO> couponlist = service.selectcoupon(waggleVO.getNo());
		
		modal.addAttribute("mycoupon", couponlist);
	return "waggle/listcoupon";
	}
	
	
	/*쿠폰선물하기*/
	@GetMapping("/waggle/giftcoupon")
	public String giftcoupon() {		
		return "waggle/giftcoupon";
	}
	
	/* 쿠폰사용하기 */
	@ResponseBody
	@PostMapping("/couponuse")
	public void couponuse(HttpSession session,@RequestParam(value="coupon_id") String coupon_id,CouponVO cp) {
	
		WaggleJoinVO waggle =(WaggleJoinVO) session.getAttribute("waggleVO");
	
		cp.setNo(waggle.getNo());
		
		cp.setCouponid(coupon_id);
		
		
		service.deletecoupn(cp);
	}	
	
	/* 회원번호로 보유 종목 가격 알기 */
	
	@PostMapping("stock/typecompany")
	public String typecompany(@RequestParam(value="no") int no,Model model, @RequestParam(value="type") String type, StockBuySellVO buysell) {
		WaggleJoinVO waggle = service.selectaccount(no);
		buysell.setMember_account(waggle.getMember_account());
		buysell.setStock_type(type);
		
		List<DetailStockTypeVO> list = service.typecompany(buysell);

		model.addAttribute("list",list);
		return "waggle/rankInfoDetail";
	}
	
	
}
