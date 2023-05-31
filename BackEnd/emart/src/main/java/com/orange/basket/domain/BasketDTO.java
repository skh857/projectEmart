package com.orange.basket.domain;

public class BasketDTO {
    private int b_no;
    private String b_name;
    private int b_price;
    private int b_purchaseCnt;
    private int b_purchasePrice;
    private int b_totalCnt;
    private int b_totalPrice;
    private int g_no;
    private int user_no;

    public BasketDTO() {
    }

	public BasketDTO(int b_no, String b_name, int b_price, int b_purchaseCnt, int b_purchasePrice, int b_totalCnt,
			int b_totalPrice, int g_no, int user_no) {
		super();
		this.b_no = b_no;
		this.b_name = b_name;
		this.b_price = b_price;
		this.b_purchaseCnt = b_purchaseCnt;
		this.b_purchasePrice = b_purchasePrice;
		this.b_totalCnt = b_totalCnt;
		this.b_totalPrice = b_totalPrice;
		this.g_no = g_no;
		this.user_no = user_no;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
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

	public int getB_purchaseCnt() {
		return b_purchaseCnt;
	}

	public void setB_purchaseCnt(int b_purchaseCnt) {
		this.b_purchaseCnt = b_purchaseCnt;
	}

	public int getB_purchasePrice() {
		return b_purchasePrice;
	}

	public void setB_purchasePrice(int b_purchasePrice) {
		this.b_purchasePrice = b_purchasePrice;
	}

	public int getB_totalCnt() {
		return b_totalCnt;
	}

	public void setB_totalCnt(int b_totalCnt) {
		this.b_totalCnt = b_totalCnt;
	}

	public int getB_totalPrice() {
		return b_totalPrice;
	}

	public void setB_totalPrice(int b_totalPrice) {
		this.b_totalPrice = b_totalPrice;
	}

	public int getG_no() {
		return g_no;
	}

	public void setG_no(int g_no) {
		this.g_no = g_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((b_name == null) ? 0 : b_name.hashCode());
		result = prime * result + b_no;
		result = prime * result + b_price;
		result = prime * result + b_purchaseCnt;
		result = prime * result + b_purchasePrice;
		result = prime * result + b_totalCnt;
		result = prime * result + b_totalPrice;
		result = prime * result + g_no;
		result = prime * result + user_no;
		return result;
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
		if (b_name == null) {
			if (other.b_name != null)
				return false;
		} else if (!b_name.equals(other.b_name))
			return false;
		if (b_no != other.b_no)
			return false;
		if (b_price != other.b_price)
			return false;
		if (b_purchaseCnt != other.b_purchaseCnt)
			return false;
		if (b_purchasePrice != other.b_purchasePrice)
			return false;
		if (b_totalCnt != other.b_totalCnt)
			return false;
		if (b_totalPrice != other.b_totalPrice)
			return false;
		if (g_no != other.g_no)
			return false;
		if (user_no != other.user_no)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "BasketDTO [b_no=" + b_no + ", b_name=" + b_name + ", b_price=" + b_price + ", b_purchaseCnt="
				+ b_purchaseCnt + ", b_purchasePrice=" + b_purchasePrice + ", b_totalCnt=" + b_totalCnt
				+ ", b_totalPrice=" + b_totalPrice + ", g_no=" + g_no + ", user_no=" + user_no + "]";
	}
    
    
   
}