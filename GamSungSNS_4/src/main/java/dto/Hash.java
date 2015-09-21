package dto;

public class Hash {
	private String content;
	private int boardBoardNo;
	
	public Hash() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Hash(String content, int boardBoardNo) {
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
