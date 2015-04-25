package com.cartoon.bean;

import java.util.ArrayList;
import java.util.List;

public class CartoonContent
{
  int cartoon_id;
  int cartoon_title_id;
  String cartoon_title;
  List<CartoonContentImage> cartoonImageList = new ArrayList();

  public List<CartoonContentImage> getCartoonImageList() {
    return this.cartoonImageList;
  }

  public void setCartoonImageList(List<CartoonContentImage> cartoonImageList) {
    this.cartoonImageList = cartoonImageList;
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

  public String getCartoon_title() {
    return this.cartoon_title;
  }

  public void setCartoon_title(String cartoon_title) {
    this.cartoon_title = cartoon_title;
  }
}