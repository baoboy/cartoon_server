package com.cartoon.bean;

public class CartoonContentImage {
	private int image_id;
	private int cartoon_id;
	private int cartoon_title_id;
	private String image_url = "";

	public int getImage_id() {
		return this.image_id;
	}

	public void setImage_id(int image_id) {
		this.image_id = image_id;
	}

	public int getCartoon_id() {
		return this.cartoon_id;
	}

	public void setCartoon_id(int cartoon_id) {
		this.cartoon_id = cartoon_id;
	}

	public int getCartoon_title_id() {
		return this.cartoon_title_id;
	}

	public void setCartoon_title_id(int cartoon_title_id) {
		this.cartoon_title_id = cartoon_title_id;
	}

	public String getImage_url() {
		return this.image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
}