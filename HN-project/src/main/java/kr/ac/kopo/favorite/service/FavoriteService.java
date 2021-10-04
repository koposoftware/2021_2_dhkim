package kr.ac.kopo.favorite.service;

import java.util.List;

import kr.ac.kopo.vo.FollowVO;
import kr.ac.kopo.vo.LikeCompanyVO;
import kr.ac.kopo.vo.PortfolioVO;
import kr.ac.kopo.vo.RankListVO;
import kr.ac.kopo.vo.StockTodayVO;
import kr.ac.kopo.vo.WaggleJoinVO;

public interface FavoriteService {
	
	
	/* 관심등록하기 */
	void insertlike(LikeCompanyVO lc);
	
	/* 관심종목리스트 */
	List<StockTodayVO> likecomapnylist(WaggleJoinVO waggle);

	/* 팔로우하기 */
	void insertlikeman(FollowVO fl);
	
	/* 포트폴리오좋아요하기 */
	void likeport(PortfolioVO pf);

	/* 내가찜한포르톺리오보기 */
	List<PortfolioVO> selectport(PortfolioVO pf);
	
	List<PortfolioVO> selectportname(PortfolioVO pf);
	
	/*내가픽한 포트폴리오*/
	List<PortfolioVO> selectport2(PortfolioVO pf);
	
	/* 매수해야할 3가지항목 */
	List<StockTodayVO> recc(PortfolioVO pf);
	
	/* 포트폴리오 저장횟수 증가시키기 */
	void increport(WaggleJoinVO waggle2);
	
	/* 그사람을 팔로워하는사람들 */
	List<FollowVO> selectfollow(FollowVO f2);
	
	/* 그사람 그만 좋아하기(팔로우 끊기) */
	void deletelikeman(FollowVO fl);
	
	void deleteme(FollowVO fl);

	/* 관심종목 취소 */
	void unlike(LikeCompanyVO lc);

	/* 이기업 관심등록했는지 봐보기 */
	boolean selectcompany(LikeCompanyVO lc);
	
	/* 종목명이름으로 종가구하기 */
	StockTodayVO getclose(StockTodayVO st);

	List<FollowVO> follower3(); //팔로워 최다 3순위

	List<RankListVO> myfollower(WaggleJoinVO wj);

	List<RankListVO> myfollow(WaggleJoinVO wj);

	List<StockTodayVO> likecompanycount();

	int mycountcompany(WaggleJoinVO waggle);

	List<StockTodayVO> companyliketype(StockTodayVO st);

	void deletecompan(StockTodayVO st);
}
