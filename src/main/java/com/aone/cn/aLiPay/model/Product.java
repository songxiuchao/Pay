package com.aone.cn.aLiPay.model;
/**
 * 商品表
 * @author 开发
 *
 */
public class Product {	
	 /**
	  * 主键id	
	  */
	 private String id;
	 /**
	  * 商品名称
	  */
	 private String name;
	 /**
	  * 商品价格
	  */
	 private String price;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	 
	 
}
