package kr.ac.kopo.favorite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.favorite.dao.FavoriteDAO;
import kr.ac.kopo.vo.FollowVO;
import kr.ac.kopo.vo.LikeCompanyVO;
import kr.ac.kopo.vo.PortfolioVO;
import kr.ac.kopo.vo.RankListVO;
import kr.ac.kopo.vo.StockTodayVO;
import kr.ac.kopo.vo.WaggleJoinVO;

@Service
public class FavoriteServiceImpl implements FavoriteService {

	@Autowired
	private FavoriteDAO dao;
	
	/* 관심종목 등록 */
	public void insertlike(LikeCompanyVO lc) {
		dao.insertlike(lc);
		
	}
	
	/* 관심등록 취소 */
	public void unlike(LikeCompanyVO lc) {
		dao.unlike(lc);
		
	}
	
	public List<StockTodayVO> likecomapnylist(WaggleJoinVO waggle) {
		List<StockTodayVO> lc = dao.likecompanylist(waggle);
		return lc;
	}
	
	/* 팔로우하기 */
	
	public void insertlikeman(FollowVO fl) {
		dao.likeman(fl);
		
	}
	
	/* 포트폴리오 좋아요 관심함 */
	public void likeport(PortfolioVO pf) {
		dao.likeport(pf);
		
	}
	
	/* 내가찜한포트폴리오 */
	public List<PortfolioVO> selectport(PortfolioVO pf) {
		List<PortfolioVO> list = dao.selectport(pf);
		return list;
	}
	
	/* 누구의 포트폴리오인지 몇개의 종목인지 */
	
	public List<PortfolioVO> selectportname(PortfolioVO pf) {
		List<PortfolioVO> list = dao.selectportname(pf);
		return list;
	}
	
	/* 내가픽한 포트폴리오 */
	public List<PortfolioVO> selectport2(PortfolioVO pf) {
		List<PortfolioVO> list = dao.selectport2(pf);

		return list;
	}
	
	/* 매수해야할 항목 */
	public List<StockTodayVO> recc(PortfolioVO pf) {
		List<StockTodayVO> list = dao.recc(pf);
		return list;
	}
	
	/* 포트폴리오 저장횟수 증가시키기 */
	public void increport(WaggleJoinVO waggle2) {
		dao.increport(waggle2);
		
	}
	
	/* 그사람을 팔로우하는사람들 */
	public List<FollowVO> selectfollow(FollowVO f2) {
		List<FollowVO> list =dao.selectfollow(f2);
		return list;
	}
	
	
	/* 그사람 그만 좋아하기 (팔로워 끊기) */
	public void deletelikeman(FollowVO fl) {
		dao.deletelikeman(fl);
		
	}
	
	/* 이기업 관심등록했는지 봐보기 */
	public boolean selectcompany(LikeCompanyVO lc) {
		boolean bool =dao.selectcompany(lc);
		
		return bool;
	}
	
	/* 종목명이름으로 종가구하기 */
	public StockTodayVO getclose(StockTodayVO st) {
		StockTodayVO st2 =dao.getclose(st);
		return st2;
	}

	/* 팔로워 최다 3순위 */
	public List<FollowVO> follower3() {
		List<FollowVO> list = dao.follower3();
		return list;
	}
	
	
	public List<RankListVO> myfollower(WaggleJoinVO wj) {
		
		List<RankListVO> list = dao.myfollower(wj);
	
		return list;
	}
	

	public List<RankListVO> myfollow(WaggleJoinVO wj) {
		List<RankListVO> list = dao.myfollow(wj);
		return list;
	}
	

	public void deleteme(FollowVO fl) {
		dao.deleteme(fl);
		
	}
	

	public List<StockTodayVO> likecompanycount() {
		List<StockTodayVO> rank = dao.likecompanycount();
		return rank;
	}
	
	

	public int mycountcompany(WaggleJoinVO waggle) {
		int num = dao.mycountcompany(waggle);
		return num;
	}
	
	
	@Override
	public List<StockTodayVO> companyliketype(StockTodayVO st) {
		List<StockTodayVO> list = dao.compayliketype(st);
		System.out.println(list);
		return list;
	}
	
	@Override
	public void deletecompan(StockTodayVO st) {
		dao.deletecompan(st);
		
	}
}
