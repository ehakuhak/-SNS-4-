package dto;

import java.util.Date;

public class Friend {
	private int no;
	private int requireUser;
	private Date requireDate;
	private int acceptUser;
	private Date acceptDate;
	private char friendCheck;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getRequireUser() {
		return requireUser;
	}
	public void setRequireUser(int requireUser) {
		this.requireUser = requireUser;
	}
	public Date getRequireDate() {
		return requireDate;
	}
	public void setRequireDate(Date requireDate) {
		this.requireDate = requireDate;
	}
	public int getAcceptUser() {
		return acceptUser;
	}
	public void setAcceptUser(int acceptUser) {
		this.acceptUser = acceptUser;
	}
	public Date getAcceptDate() {
		return acceptDate;
	}
	public void setAcceptDate(Date acceptDate) {
		this.acceptDate = acceptDate;
	}
	public char getFriendCheck() {
		return friendCheck;
	}
	public void setFriendCheck(char friendCheck) {
		this.friendCheck = friendCheck;
	}
	
	public Friend(int requireUser, Date requireDate, int acceptUser) {
		super();
		this.requireUser = requireUser;
		this.requireDate = requireDate;
		this.acceptUser = acceptUser;
	}
	@Override
	public String toString() {
		return "Friend [no=" + no + ", requireUser=" + requireUser + ", requireDate=" + requireDate + ", acceptUser="
				+ acceptUser + ", acceptDate=" + acceptDate + ", friendCheck=" + friendCheck + "]";
	}
	
}
