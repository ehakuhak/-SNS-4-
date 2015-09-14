package dto;

import java.util.Date;

public class Friend {
	private int requireUserNo;
	private Date requireDate;
	private int acceptUserNo;
	private Date acceptDate;
	private char friendCheck;
	
	public int getRequireUser() {
		return requireUserNo;
	}
	public void setRequireUser(int requireUser) {
		this.requireUserNo = requireUser;
	}
	public Date getRequireDate() {
		return requireDate;
	}
	public void setRequireDate(Date requireDate) {
		this.requireDate = requireDate;
	}
	public int getAcceptUser() {
		return acceptUserNo;
	}
	public void setAcceptUser(int acceptUser) {
		this.acceptUserNo = acceptUser;
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
	
	public Friend(int requireUser, int acceptUser) {
		super();
		this.requireUserNo = requireUser;
	//	this.requireDate = requireDate;
		this.acceptUserNo = acceptUser;
	}
	@Override
	public String toString() {
		return "Friend [requireUser=" + requireUserNo + ", requireDate=" + requireDate + ", acceptUser="
				+ acceptUserNo + ", acceptDate=" + acceptDate + ", friendCheck=" + friendCheck + "]";
	}
	
}
