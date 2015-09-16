package dto;

import java.util.Date;

public class Friend {
	private int fromUserNo;
	private Date requireDate;
	private int toUserNo;
	
	
	public int getFromUserNo() {
		return fromUserNo;
	}

	public void setFromUserNo(int fromUserNo) {
		this.fromUserNo = fromUserNo;
	}

	public Date getRequireDate() {
		return requireDate;
	}

	public void setRequireDate(Date requireDate) {
		this.requireDate = requireDate;
	}

	public int getToUserNo() {
		return toUserNo;
	}

	public void setToUserNo(int toUserNo) {
		this.toUserNo = toUserNo;
	}

	public Friend(int requireUser, int acceptUser) {
		super();
		this.fromUserNo = requireUser;
		this.toUserNo = acceptUser;
	}
	
	@Override
	public String toString() {
		return "Friend [fromUserNo=" + fromUserNo + ", requireDate=" + requireDate + ", toUserNo=" + toUserNo + "]";
	}
	
	
}
