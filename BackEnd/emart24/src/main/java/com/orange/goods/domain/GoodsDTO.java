package com.orange.goods.domain;

import java.util.Objects;

public class GoodsDTO {
	
	// 멤버 변수
	private int g_no;	// 상품 번호
	private String g_image;	// 상품 사진
	private String g_name;	// 상품 이름
	private int g_price;	// 상품 가격
	
	// 생성자
	public GoodsDTO() {}
	
	public GoodsDTO(String g_image, String g_name, int g_price) {
		this.g_image = g_image;
		this.g_name = g_name;
		this.g_price = g_price;
	}

	// getter, setter
	public int getG_no() {
		return g_no;
	}

	public void setG_no(int g_no) {
		this.g_no = g_no;
	}

	public String getG_image() {
		return g_image;
	}

	public void setG_image(String g_image) {
		this.g_image = g_image;
	}

	public String getG_name() {
		return g_name;
	}

	public void setG_name(String g_name) {
		this.g_name = g_name;
	}

	public int getG_price() {
		return g_price;
	}

	public void setG_price(int g_price) {
		this.g_price = g_price;
	}

	// toString
	@Override
	public String toString() {
		return "GoodsDTO [g_no=" + g_no + ", g_image=" + g_image + ", g_name=" + g_name + ", g_price=" + g_price + "]";
	}

	// hashCode & equals
	@Override
	public int hashCode() {
		return Objects.hash(g_image, g_name, g_no, g_price);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GoodsDTO other = (GoodsDTO) obj;
		return Objects.equals(g_image, other.g_image) && Objects.equals(g_name, other.g_name) && g_no == other.g_no
				&& g_price == other.g_price;
	}
	
}