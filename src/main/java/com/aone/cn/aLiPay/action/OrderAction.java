package com.aone.cn.aLiPay.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aone.cn.aLiPay.model.Orders;
import com.aone.cn.aLiPay.service.OrdersService;
@Controller
@RequestMapping("/ord")
public class OrderAction {

	@Autowired
	public OrdersService ordersService;
	/**
	 * 查看所有订单以及用户信息
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value="/orderList")
	@ResponseBody
	public Map orderList(){
		Map map = new HashMap();
		List<Orders> orderList=ordersService.selectOrder();
		if(orderList!=null){
			map.put("orderList", orderList);
		}
		return map;
	}
}
