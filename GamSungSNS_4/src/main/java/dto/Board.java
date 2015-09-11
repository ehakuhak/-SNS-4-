package dto;

import java.util.Date;

public class Board {
	private int boardNo;
	private int recommendCount;
	private String content;
	private String movieUrl;
	private Date regDate;
	private int usersUserNo;
	private int viewNum;
	private int emotionNo;
	private String hash;
	
	public Board(String content, String movieUrl, int usersUserNo, int emotionNo, String hash) {
		super();
		this.content = content;
		this.movieUrl = movieUrl;
		this.usersUserNo = usersUserNo;
		this.emotionNo = emotionNo;
		this.hash = hash;
	}
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getRecommendCount() {
		return recommendCount;
	}
	public void setRecommendCount(int recommendCount) {
		this.recommendCount = recommendCount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMovieUrl() {
		return movieUrl;
	}
	public void setMovieUrl(String movieUrl) {
		this.movieUrl = movieUrl;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getUsersUserNo() {
		return usersUserNo;
	}
	public void setUsersUserNo(int usersUserNo) {
		this.usersUserNo = usersUserNo;
	}
	public int getViewNum() {
		return viewNum;
	}
	public void setViewNum(int viewNum) {
		this.viewNum = viewNum;
	}
	public int getEmotionNo() {
		return emotionNo;
	}
	public void setEmotionNo(int emotionNo) {
		this.emotionNo = emotionNo;
	}
	public String getHash() {
		return hash;
	}
	public void setHash(String hash) {
		this.hash = hash;
	}
	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", recommendCount=" + recommendCount + ", content=" + content
				+ ", movieUrl=" + movieUrl + ", regDate=" + regDate + ", usersUserNo=" + usersUserNo + ", viewNum="
				+ viewNum + ", emotionNo=" + emotionNo + ", hash=" + hash + "]";
	}
	
	
}
