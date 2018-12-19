package com.aone.cn.aLiPay.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aone.cn.aLiPay.dao.ProductMapper;
import com.aone.cn.aLiPay.model.Product;
import com.aone.cn.aLiPay.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper;
	
	public List<Product> getProducts() {
		return productMapper.selectByExample();
	}

	public Product getProductById(String productId) {	
		return productMapper.selectByPrimaryKey(productId);
	}
}
