package dto;

import java.util.Date;

public class Reply {
	private int replyNo;
	private String replyContent;
	private Date regDate;
	private int boardBoardNo;
	private int usersUserNo;
	
	public Reply(){
		super();
	}

	public Reply(int replyNo, String replyContent, Date regDate, int boardBoardNo, int usersUserNo) {
		super();
		this.replyNo = replyNo;
		this.replyContent = replyContent;
		this.regDate = regDate;
		this.boardBoardNo = boardBoardNo;
		this.usersUserNo = usersUserNo;
	}
	
	public Reply(int replyNo, String replyContent,  int boardBoardNo, int usersUserNo) {
		super();
		this.replyNo = replyNo;
		this.replyContent = replyContent;
		this.boardBoardNo = boardBoardNo;
		this.usersUserNo = usersUserNo;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getBoardBoardNo() {
		return boardBoardNo;
	}

	public void setBoardBoardNo(int boardBoardNo) {
		this.boardBoardNo = boardBoardNo;
	}

	public int getUsersUserNo() {
		return usersUserNo;
	}

	public void setUsersUserNo(int usersUserNo) {
		this.usersUserNo = usersUserNo;
	}

	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", replyContent=" + replyContent + ", regDate=" + regDate
				+ ", boardBoardNo=" + boardBoardNo + ", usersUserNo=" + usersUserNo + "]";
	}

}
