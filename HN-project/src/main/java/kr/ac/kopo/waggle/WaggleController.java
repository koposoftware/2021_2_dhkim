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
	
	/* ?????????????????? */
	@GetMapping("/waggle")
	public String wagglemain() {
		return "waggle/wagglemain";
	}
	
	
	/* ???????????? ???????????? */
	@Transactional
	@GetMapping("/waggle/coupon")
	public String wagglecoupon(HttpSession session, Model model) {
		WaggleJoinVO waggleVO = (WaggleJoinVO) session.getAttribute("waggleVO");
		AccountDailyVO ad = service.selectacc(waggleVO);//?????? ?????????
		List<CouponVO> couponlist = service.selectcoupon(waggleVO.getNo());//??????????????? ?????????
		
		model.addAttribute("mycoupon", couponlist); //?????? ??????????????????
		model.addAttribute("cash",ad.getTcash()); //???????????????
		model.addAttribute("myheart",waggleVO.getHart());//?????? ?????????
		return "waggle/coupon";
	}
	
	/* ???????????? ???????????? */
	@GetMapping("/waggle/join")
	public String wagglejoin(HttpSession session, Model model) {
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		
		List<AccountVO> list = accountservice.myaccount(userVO);
		model.addAttribute("accountlist", list);
		return "waggle/join";
	}
	
	
	/* ???????????? ????????? ?????? ?????? */
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
		
			System.out.println("????????????....??????.."+heart);
		waggleVO.setHart(waggleVO.getHart()+heart);
		System.out.println("????????? :"+waggleVO.getHart()+heart
				);
		session.setAttribute("waggleVO", waggleVO);
		Map<String, Object> map = new HashMap<String, Object>();
	
		
		map.put("myheart",waggleVO.getHart());//??????
		AccountDailyVO ad = service.selectacc(waggleVO); //??????????????????
		map.put("myprice",ad.getTcash());
		return map;
	}
	
	/* ????????????????????? */
	public void msgSend(int heart) { 
		String api_key = "NCSP5MNQPQYFNCZ1"; 
		//??????????????? ?????? ?????? API KEY 
		String api_secret = "A3Z03VRIDFHTJPPNW20TZL67MHRRQVFY";
		//??????????????? ?????? ?????? API SECRET KEY 
		Message coolsms = new Message(api_key, api_secret); 
		HashMap<String, String> params = new HashMap<String, String>(); 
		params.put("to", "01038803302");
		params.put("from", "01038803302"); //????????? ??????????????? ????????? ???????????? ??????????????? ??? 
		params.put("type", "SMS"); 
		params.put("text", "[???????????????] 34,800????????? ?????? "+heart+"?????? ?????????????????????."); //????????? ??????
		params.put("app_version", "test app 1.2");
		
		  try { JSONObject obj = (JSONObject) coolsms.send(params);
		  System.out.println(obj.toString()); //?????? ?????? ??????
		  } catch (CoolsmsException e) {
		  System.out.println(e.getMessage()); System.out.println(e.getCode()); }
		 
		}
	
	
	
	/* ???????????? ?????? ????????? ????????? */
	@PostMapping("/waggle/join")
	public String wirte(@Valid WaggleJoinVO waggle, HttpSession session, Model model) {
		//?????????		
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");//???????????????????????????

		waggle.setMember_id(userVO.getMember_id());
		service.join(waggle);//?????? ??????
		
			session.setAttribute("waggleVO", waggle); //???????????? ?????? ??????
			session.setAttribute("msg", true);
		
		
		return "redirect:/waggle/join";
	}
	

	/* ???????????? ?????? ???????????? */
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
	
	
	/* ????????????????????? ????????????*/
	@Transactional
	@ResponseBody
	@PostMapping("/waggle/rankInfo/piechart")
	public Map<String, Object> piechart(@RequestParam(value="no") int no, HttpSession session){
	
		WaggleJoinVO waggle = service.selectaccount(no);
		WaggleJoinVO waggle2 =(WaggleJoinVO)session.getAttribute("waggleVO");//???
		
		List<StockWeightVO> valuelist = service.wagglerankInfo(waggle);
		List<AccountDailyVO> ratelist = service.wagglerateInfo(waggle);//????????? ??????:?????????
		List<AccountDailyVO> ratelist2 = service.wagglerateInfo(waggle2);//??? ??????: ?????????	
	
		Map<String, Object> map = new HashMap<String, Object>();		
		map.put("valuelist",valuelist);
		map.put("rateme",ratelist);
		map.put("rateanother",ratelist2);
		return map;
		
	}
	
	
	
	
	/* ??????????????? ????????? ?????? ???????????? */
	@ResponseBody
	@PostMapping("/waggle/rankInfo/linechart")
	public Map<String, Object> linechart(@RequestParam(value="no") int no,HttpSession session){
		WaggleJoinVO waggle = service.selectaccount(no);//?????????
		WaggleJoinVO waggle2 =(WaggleJoinVO)session.getAttribute("waggleVO");//???
		
		List<AccountDailyVO> ratelist = service.wagglerateInfo(waggle);//????????? ??????:?????????
		List<AccountDailyVO> ratelist2 = service.wagglerateInfo(waggle2);//??? ??????: ?????????																	//??? ??????:?????????
		Map<String, Object> map = new HashMap<String, Object>();		
		
		map.put("rateme",ratelist);
		map.put("rateanother",ratelist2);
		return map;
		
	}
	
	
	
	/* ???????????? ?????? ?????? */
	@GetMapping("waggle/ranking")
	public String waggleranking(Model model,HttpSession session) {
		WaggleJoinVO waggle = (WaggleJoinVO)session.getAttribute("waggleVO");
		
		List<RankListVO> list = service.wagglerank();
		RankListVO mylist= service.wagglemyrank(waggle);//??????????????? ????????????
		List<RankListVO> valuelist = service.wagglevalue();
		RankListVO myvalue= service.mystockvaluek(waggle);//??????????????? ????????????
		model.addAttribute("valuelist",valuelist);
		model.addAttribute("ranklist", list);
		model.addAttribute("mylist",mylist);
		model.addAttribute("myvalue",myvalue);
		return "waggle/ranking";
	}
	
	
	/* ???????????? */
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
	
	/*??????????????????*/
	@PostMapping("/couponlist")
	public String couponlist(Model modal,CouponVO couponvo, HttpSession session) {
		WaggleJoinVO waggleVO = (WaggleJoinVO) session.getAttribute("waggleVO");

		List<CouponVO> couponlist = service.selectcoupon(waggleVO.getNo());
		
		modal.addAttribute("mycoupon", couponlist);
	return "waggle/listcoupon";
	}
	
	
	/*??????????????????*/
	@GetMapping("/waggle/giftcoupon")
	public String giftcoupon() {		
		return "waggle/giftcoupon";
	}
	
	/* ?????????????????? */
	@ResponseBody
	@PostMapping("/couponuse")
	public void couponuse(HttpSession session,@RequestParam(value="coupon_id") String coupon_id,CouponVO cp) {
	
		WaggleJoinVO waggle =(WaggleJoinVO) session.getAttribute("waggleVO");
	
		cp.setNo(waggle.getNo());
		
		cp.setCouponid(coupon_id);
		
		
		service.deletecoupn(cp);
	}	
	
	/* ??????????????? ?????? ?????? ?????? ?????? */
	
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
