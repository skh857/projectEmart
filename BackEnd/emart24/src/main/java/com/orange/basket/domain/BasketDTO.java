package com.orange.basket.domain;

import java.util.Objects;

public class BasketDTO {
    
	// 멤버 변수
	private int b_no;
    private String b_image;
    private String b_name;
    private int b_price;
    private int b_purchase_cnt;
    private int b_purchase_price;
    private int g_no;
    private String id;
    
    // 생성자
    public BasketDTO() {}
    
	public BasketDTO(String b_image, String b_name, int b_price, int g_no, String id) {
		this.b_image = b_image;
		this.b_name = b_name;
		this.b_price = b_price;
		this.g_no = g_no;
		this.id = id;
	}

	// getter, setter
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_image() {
		return b_image;
	}
	public void setB_image(String b_image) {
		this.b_image = b_image;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public int getB_price() {
		return b_price;
	}
	public void setB_price(int b_price) {
		this.b_price = b_price;
	}
	public int getB_purchase_cnt() {
		return b_purchase_cnt;
	}
	public void setB_purchase_cnt(int b_purchase_cnt) {
		this.b_purchase_cnt = b_purchase_cnt;
	}
	public int getB_purchase_price() {
		return b_purchase_price;
	}
	public void setB_purchase_price(int b_purchase_price) {
		this.b_purchase_price = b_purchase_price;
	}
	public int getG_no() {
		return g_no;
	}
	public void setG_no(int g_no) {
		this.g_no = g_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	// toString
	@Override
	public String toString() {
		return "BasketDTO [b_no=" + b_no + ", b_image=" + b_image + ", b_name=" + b_name + ", b_price=" + b_price
				+ ", b_purchase_cnt=" + b_purchase_cnt + ", b_purchase_price=" + b_purchase_price + ", g_no=" + g_no + ", id=" + id + "]";
	}

	// hashCode & equals
	@Override
	public int hashCode() {
		return Objects.hash(b_image, b_name, b_no, b_price, b_purchase_cnt, b_purchase_price, g_no, id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BasketDTO other = (BasketDTO) obj;
		return Objects.equals(b_image, other.b_image) && Objects.equals(b_name, other.b_name) && b_no == other.b_no
				&& b_price == other.b_price && b_purchase_cnt == other.b_purchase_cnt
				&& b_purchase_price == other.b_purchase_price && g_no == other.g_no && id == other.id;
	}
	
}