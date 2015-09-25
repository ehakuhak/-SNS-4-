package dto;

import java.util.Date;
import java.util.List;

public class Board {
	private int boardNo;
	private int recommendCount;
	private String content;
	private String movieUrl;
	private Date regDate;
	private int usersUserNo;
	private int readCount;
	private int emotionNo;
	private String name;
	private int reportCount;
	
	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public int getReportCount() {
		return reportCount;
	}

	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}

	private List<String> hash;
	private List<String> imageUrl;

	public List<String> getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(List<String> imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Board(String content, String movieUrl, int usersUserNo, int emotionNo) {
		super();
		this.content = content;
		this.movieUrl = movieUrl;
		this.usersUserNo = usersUserNo;
		this.emotionNo = emotionNo;
		//this.hash = hash;
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
		return readCount;
	}
	public void setViewNum(int viewNum) {
		this.readCount = viewNum;
	}
	public int getEmotionNo() {
		return emotionNo;
	}
	public void setEmotionNo(int emotionNo) {
		this.emotionNo = emotionNo;
	}
	
	
	public List<String> getHash() {
		return hash;
	}

	public void setHash(List<String> hash) {
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
				+ readCount + ", emotionNo=" + emotionNo + ", name=" + name + ", hash=" + hash + ", imageUrl=" + imageUrl
				+ "]";
	}
	
	
}
