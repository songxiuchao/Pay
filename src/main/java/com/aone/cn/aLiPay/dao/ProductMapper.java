package com.aone.cn.aLiPay.dao;

import java.util.List;

import com.aone.cn.aLiPay.model.Product;


public interface ProductMapper {
	/**
	 * 获取所有产品列表
	 * @return
	 */
	List<Product> selectByExample();
	/**
	 * 根据产品ID查询产品详情
	 * @param productId
	 * @return
	 */
	Product selectByPrimaryKey(String id);
}