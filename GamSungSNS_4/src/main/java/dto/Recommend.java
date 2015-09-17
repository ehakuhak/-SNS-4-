package dto;

import java.util.Date;

public class Recommend {
	private int board_no;
	private Date recDate;
	private int user_no;
	
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public Date getRecDate() {
		return recDate;
	}
	public void setRecDate(Date recDate) {
		this.recDate = recDate;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	@Override
	public String toString() {
		return "Recommend [board_no=" + board_no + ", recDate=" + recDate + ", user_no=" + user_no + "]";
	}
	
	
}
