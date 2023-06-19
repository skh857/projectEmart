package com.emart.domain;

import java.util.Date;
import java.util.Objects;

public class UserDTO {

	// 멤버변수
	private String id;	// 아이디
	private String pw;	// 비밀번호
	private String name;	// 이름
	private String birth;	// 생년월일
	private String tel;	// 전화번호
	private Date reg_date;	// 가입일
	
	// 생성자
	public UserDTO() {}

	public UserDTO(String id, String pw, String name, String birth, String tel) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.tel = tel;
	}

	// getter, setter
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	// toString
	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", birth=" + birth + ", tel=" + tel
				+ ", reg_date=" + reg_date + "]";
	}

	// hashCode & equals
	@Override
	public int hashCode() {
		return Objects.hash(birth, id, name, pw, reg_date, tel);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserDTO other = (UserDTO) obj;
		return Objects.equals(birth, other.birth) && Objects.equals(id, other.id) && Objects.equals(name, other.name)
				&& Objects.equals(pw, other.pw) && Objects.equals(reg_date, other.reg_date)
				&& Objects.equals(tel, other.tel);
	}

}
