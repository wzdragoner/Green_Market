package model;

public class UserInfo {
	private int id;
	private String name;
	private String pwd;
	private String mail;
	private String add;
	private String tel;

	public int getUserId() {
		return id;
	}

	public void setUserId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return name;
	}

	public void setUserName(String name) {
		this.name = name;
	}

	public String getUserPassword() {
		return pwd;
	}

	public void setUserPassword(String pwd) {
		this.pwd = pwd;
	}

	public String getUserMail() {
		return mail;
	}

	public void setUserMail(String mail) {
		this.mail = mail;
	}

	public String getUserAdd() {
		return add;
	}

	public void setUserAdd(String add) {
		this.add = add;
	}

	public String getUserTel() {
		return tel;
	}

	public void setUserTel(String tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", name=" + name + ", pwd=" + pwd + ", mail=" + mail + ", add=" + add + ", tel="
				+ tel + "]";
	}

}
