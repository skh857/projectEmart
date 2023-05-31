package com.orange.goods.domain;

import java.util.Objects;

public class GoodsDTO {
	private int g_no;
	private String g_name;
	private int g_price;
	private int g_stock;
	private int g_age_res;
	private String g_image;
	
	public GoodsDTO(int g_no, String g_name, int g_price, int g_stock, int g_age_res, String g_image) {
		super();
		this.g_no = g_no;
		this.g_name = g_name;
		this.g_price = g_price;
		this.g_stock = g_stock;
		this.g_age_res = g_age_res;
		this.g_image = g_image;
	}
	public int getG_no() {
		return g_no;
	}
	public void setG_no(int g_no) {
		this.g_no = g_no;
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
	public int getG_stock() {
		return g_stock;
	}
	public void setG_stock(int g_stock) {
		this.g_stock = g_stock;
	}
	public int getG_age_res() {
		return g_age_res;
	}
	public void setG_age_res(int g_age_res) {
		this.g_age_res = g_age_res;
	}
	public String getG_image() {
		return g_image;
	}
	public void setG_image(String g_image) {
		this.g_image = g_image;
	}
	@Override
	public int hashCode() {
		return Objects.hash(g_age_res, g_name, g_no, g_price, g_stock, g_image);
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
		return Objects.equals(g_age_res, other.g_age_res) && Objects.equals(g_name, other.g_name)
				&& Objects.equals(g_no, other.g_no) && Objects.equals(g_price, other.g_price)
				&& Objects.equals(g_stock, other.g_stock) && Objects.equals(g_image, other.g_image);
	}
	@Override
	public String toString() {
		return "GoodsDTO [g_no=" + g_no + ", g_name=" + g_name + ", g_price=" + g_price + ", g_stock=" + g_stock
				+ ", g_age_res=" + g_age_res + ", g_image=" + g_image + "]";
	}
	
}