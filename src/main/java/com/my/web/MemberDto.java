package com.my.web;

public class MemberDto {
	private int idx;
	private String id;
	private String email;
	private String password;
	private String tel;
	private String name;
	
	public MemberDto() {}
	
	public MemberDto(int idx, String id, String email, String password, String tel, String name) {
		super();
		this.idx = idx;
		this.id = id;
		this.email = email;
		this.password = password;
		this.tel = tel;
		this.name = name;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
