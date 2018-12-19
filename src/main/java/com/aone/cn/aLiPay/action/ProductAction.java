package com.aone.cn.aLiPay.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.aone.cn.aLiPay.model.Product;
import com.aone.cn.aLiPay.service.ProductService;

@Controller
@RequestMapping("/pro")
public class ProductAction {
	
	
	@Autowired
	private ProductService productService;
	/**
	 * 获取产品列表
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/products")
	public ModelAndView products() throws Exception {
		List<Product> pList = productService.getProducts();
		ModelAndView mv = new ModelAndView();
		mv.setView(new MappingJackson2JsonView());
		mv.addObject("pList", pList);
		return mv;
	}
	/**
	 * 进入确认页面(产品详情)
	 * @param productId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/goConfirm")
	public ModelAndView goConfirm(String productId) throws Exception {
		Product p = productService.getProductById(productId);
		ModelAndView mv = new ModelAndView("product-details");
		mv.addObject("p", p);
		return mv;
	}
	
}
