package dto;

import java.util.Date;
import java.util.List;

public class Board {
	private int boardNo;
	private int usersUserNo;
	private Date regDate;
	private String content;
	private int readCount;
	private int emotionNo;
	private int reportCount;
	private int recommendCount;
	
	
	private String movieUrl;
	
	private String emotion;
	
	private String name;
	
	private List<Hash> hash;
	
	private List<Image> imageList;
	
	private List<Reply> replys;
	
	private String userId;
	
	
	public List<Reply> getReplys() {
		return replys;
	}

	public void setReplys(List<Reply> replys) {
		this.replys = replys;
	}

	public String getEmotion() {
		return emotion;
	}

	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public List<Image> getImageList() {
		return imageList;
	}

	public void setImageList(List<Image> imageList) {
		this.imageList = imageList;
	}

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

	
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Board(int boardNo, String content, int usersUserNo, int emotionNo) {
		super();
		this.boardNo = boardNo;
		this.content = content;
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
	
	
	public List<Hash> getHash() {
		return hash;
	}

	public void setHash(List<Hash> hash) {
		this.hash = hash;
	}

	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", recommendCount=" + recommendCount + ", content=" + content
				+ ", movieUrl=" + movieUrl + ", regDate=" + regDate + ", usersUserNo=" + usersUserNo + ", readCount="
				+ readCount + ", emotionNo=" + emotionNo + ", emotion=" + emotion + ", name=" + name + ", reportCount="
				+ reportCount + ", hash=" + hash + ", imageList=" + imageList + ", replys=" + replys + ", userId="
				+ userId + "]";
	}
	
	
}
