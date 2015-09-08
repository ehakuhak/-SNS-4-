package dto;


public class Users {
	private int userNo;
	private String userId;
	private String password;
	private String name;
	private char admin;
	
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
	
	public Users(int userNo, String userId, String password, String name, char admin) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.admin = admin;
	}
	
	@Override
	public String toString() {
		return "Users [userNo=" + userNo + ", userId=" + userId + ", password=" + password + ", name=" + name
				+ ", admin=" + admin + "]";
	}
	
	
	
}
