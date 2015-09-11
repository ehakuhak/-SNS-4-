package dto;

import java.util.Date;

public class Users {
	private int userNo;
	private String userId;
	private String password;
	private String name;
	private char admin;
	private Date regDate;
	private String birth;
	private Date loginDate;
	private Date logoutDate;

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public Date getLoginDate() {
		return loginDate;
	}

	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}

	public Date getLogoutDate() {
		return logoutDate;
	}

	public void setLogoutDate(Date logoutDate) {
		this.logoutDate = logoutDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public char getAdmin() {
		return admin;
	}

	public void setAdmin(char admin) {
		this.admin = admin;
	}

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Users(String userId, String password, String name, String birth) {
		super();
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "Users [userNo=" + userNo + ", userId=" + userId + ", password=" + password + ", name=" + name
				+ ", admin=" + admin + ", regDate=" + regDate + ", birth=" + birth + ", loginDate=" + loginDate
				+ ", logoutDate=" + logoutDate + "]";
	}

}
