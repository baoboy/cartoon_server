package com.cartoon.bean;

public class UserPayState {
	private String user_id = "";
	private int cartoon_id;
	private int cartoon_pay_state;
	private String cartoon_pay_time = "";

	public String getCartoon_pay_time() {
		return this.cartoon_pay_time;
	}

	public void setCartoon_pay_time(String cartoon_pay_time) {
		this.cartoon_pay_time = cartoon_pay_time;
	}

	public String getUser_id() {
		return this.user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getCartoon_id() {
		return this.cartoon_id;
	}

	public void setCartoon_id(int cartoon_id) {
		this.cartoon_id = cartoon_id;
	}

	public int getCartoon_pay_state() {
		return this.cartoon_pay_state;
	}

	public void setCartoon_pay_state(int cartoon_pay_state) {
		this.cartoon_pay_state = cartoon_pay_state;
	}
}