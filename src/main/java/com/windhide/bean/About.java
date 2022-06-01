package com.windhide.bean;

public class About {
	private int id;
	private String name;
	private String engname;
	private String email;
	private String birthday;
	private String tel;
	private String adr;
	private String introduce;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEngname() {
		return engname;
	}
	public void setEngname(String engname) {
		this.engname = engname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAdr() {
		return adr;
	}
	public void setAdr(String adr) {
		this.adr = adr;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public About(int id, String name, String engname, String email, String birthday, String tel, String adr,
			String introduce) {
		super();
		this.id = id;
		this.name = name;
		this.engname = engname;
		this.email = email;
		this.birthday = birthday;
		this.tel = tel;
		this.adr = adr;
		this.introduce = introduce;
	}
	public About() {
		super();
	}
	@Override
	public String toString() {
		return "About [id=" + id + ", name=" + name + ", engname=" + engname + ", email=" + email + ", birthday="
				+ birthday + ", tel=" + tel + ", adr=" + adr + ", introduce=" + introduce + "]";
	}

	
	
}
