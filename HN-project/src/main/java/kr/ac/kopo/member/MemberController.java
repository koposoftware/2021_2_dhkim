package kr.ac.kopo.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.WaggleJoinVO;
import kr.ac.kopo.waggle.servie.WaggleService;


@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	@Autowired
	private WaggleService waggleservice;
	
	/* 로그인화면 */
	@GetMapping("/login")
	public String loginForm() {
		System.out.println("로그인");
		return "login/login";
	}
	
	/* 로그인 입력하기 */
	@PostMapping("/login")
	public String login(MemberVO member,  HttpSession session) {
		MemberVO userVO = service.login(member); //로그인 정보 가져오기
		WaggleJoinVO waggleVO = waggleservice.waggle(member);//와글 정보 가져오기
		
		
		 if(waggleVO !=null) //와글 정보가 있다면
			 session.setAttribute("waggleVO", waggleVO);	//와글정보 세션 등록하기
		 
		
		session.setAttribute("userVO", userVO); //로그인정보 세션 등록하기
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	
	@GetMapping("/waggle/panel")
	public String panel() {
		return "waggle/panel";
	}

}
