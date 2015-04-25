package com.cartoon.bean;

public class Picture {
	private int picture_category_id;
	private String picture_url = "";
	private String picture_smal_url = "";

	public int getPicture_category_id() {
		return this.picture_category_id;
	}

	public void setPicture_category_id(int picture_category_id) {
		this.picture_category_id = picture_category_id;
	}

	public String getPicture_url() {
		return this.picture_url;
	}

	public void setPicture_url(String picture_url) {
		this.picture_url = picture_url;
	}

	public String getPicture_smal_url() {
		return this.picture_smal_url;
	}

	public void setPicture_smal_url(String picture_smal_url) {
		this.picture_smal_url = picture_smal_url;
	}
}