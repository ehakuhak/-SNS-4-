package dto;

public class HasgTag {
	private String content;
	private int boardBoardNo;
	
	public HasgTag() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public HasgTag(String content, int boardBoardNo) {
		super();
		this.content = content;
		this.boardBoardNo = boardBoardNo;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public int getBoardBoardNo() {
		return boardBoardNo;
	}
	
	public void setBoardBoardNo(int boardBoardNo) {
		this.boardBoardNo = boardBoardNo;
	}
	
	@Override
	public String toString() {
		return "HasgTag [content=" + content + ", boardBoardNo=" + boardBoardNo + "]";
	}
	
	
}
