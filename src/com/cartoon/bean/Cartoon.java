package com.cartoon.bean;

import java.util.ArrayList;
import java.util.List;

public class Cartoon {
	int cartoon_id;
	String cartoon_title = "";
	int cartoon_category;
	String cartoon_category_name = "";
	String cartoon_author = "";
	String cartoon_over_url = "";
	String cartoon_star = "";
	String cartoon_update = "";
	String cartoon_desc = "";
	int cartoon_type;
	float cartoon_price;
	String cartoon_pay_code = "";
	int cartoon_pay_state;
	List<CartoonContent> cartoon_contentList = new ArrayList();

	public String getCartoon_category_name() {
		return this.cartoon_category_name;
	}

	public void setCartoon_category_name(String cartoon_category_name) {
		this.cartoon_category_name = cartoon_category_name;
	}

	public String getCartoon_pay_code() {
		return this.cartoon_pay_code;
	}

	public void setCartoon_pay_code(String cartoon_pay_code) {
		this.cartoon_pay_code = cartoon_pay_code;
	}

	public int getCartoon_pay_state() {
		return this.cartoon_pay_state;
	}

	public void setCartoon_pay_state(int cartoon_pay_state) {
		this.cartoon_pay_state = cartoon_pay_state;
	}

	public float getCartoon_price() {
		return this.cartoon_price;
	}

	public void setCartoon_price(float cartoon_price) {
		this.cartoon_price = cartoon_price;
	}

	public void setCartoon_price(int cartoon_price) {
		this.cartoon_price = cartoon_price;
	}

	public int getCartoon_type() {
		return this.cartoon_type;
	}

	public void setCartoon_type(int cartoon_type) {
		this.cartoon_type = cartoon_type;
	}

	public List<CartoonContent> getCartoon_contentList() {
		return this.cartoon_contentList;
	}

	public void setCartoon_contentList(List<CartoonContent> cartoon_contentList) {
		this.cartoon_contentList = cartoon_contentList;
	}

	public int getCartoon_id() {
		return this.cartoon_id;
	}

	public void setCartoon_id(int cartoon_id) {
		this.cartoon_id = cartoon_id;
	}

	public String getCartoon_title() {
		return this.cartoon_title;
	}

	public void setCartoon_title(String cartoon_title) {
		this.cartoon_title = cartoon_title;
	}

	public int getCartoon_category() {
		return this.cartoon_category;
	}

	public void setCartoon_category(int cartoon_category) {
		this.cartoon_category = cartoon_category;
	}

	public String getCartoon_author() {
		return this.cartoon_author;
	}

	public void setCartoon_author(String cartoon_author) {
		this.cartoon_author = cartoon_author;
	}

	public String getCartoon_over_url() {
		return this.cartoon_over_url;
	}

	public void setCartoon_over_url(String cartoon_over_url) {
		this.cartoon_over_url = cartoon_over_url;
	}

	public String getCartoon_star() {
		return this.cartoon_star;
	}

	public void setCartoon_star(String cartoon_star) {
		this.cartoon_star = cartoon_star;
	}

	public String getCartoon_update() {
		return this.cartoon_update;
	}

	public void setCartoon_update(String cartoon_update) {
		this.cartoon_update = cartoon_update;
	}

	public String getCartoon_desc() {
		return this.cartoon_desc;
	}

	public void setCartoon_desc(String cartoon_desc) {
		this.cartoon_desc = cartoon_desc;
	}

	public String toString() {
		return "cartoon_title:" + this.cartoon_title;
	}
}