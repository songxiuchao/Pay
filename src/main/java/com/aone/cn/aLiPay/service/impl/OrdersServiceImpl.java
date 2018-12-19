package com.aone.cn.aLiPay.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aone.cn.aLiPay.dao.FlowMapper;
import com.aone.cn.aLiPay.dao.OrdersMapper;
import com.aone.cn.aLiPay.model.Flow;
import com.aone.cn.aLiPay.model.Orders;
import com.aone.cn.aLiPay.service.OrdersService;
import com.aone.cn.aLiPay.util.OrderStatusEnum;
import com.aone.cn.aLiPay.util.Sid;

@Service
public class OrdersServiceImpl implements OrdersService {

	@Autowired
	private OrdersMapper ordersMapper;
	@Autowired
	private FlowMapper flowMapper;
	/**
	 * 添加订单
	 */
	public void saveOrder(Orders order) {
		ordersMapper.insert(order);
	}
	/**
	 * 根据订单号查订单
	 */
	public Orders getOrderById(String orderId) {
		return ordersMapper.selectByPrimaryKey(orderId);
	}
	/**
	 * 修改订单状态
	 */
	public void updateOrderStatus(String orderId, String alpayFlowNum, String paidAmount) {
		//查看订单是否存在
		Orders order = getOrderById(orderId);
		if (order.getOrderStatus().equals(OrderStatusEnum.WAIT_PAY.key)) {
			order = new Orders();
			order.setId(orderId);
			order.setOrderStatus(OrderStatusEnum.PAID.key);
			order.setPaidTime(new Date());
			order.setPaidAmount(paidAmount);
			//修改订单状态
			ordersMapper.updateByPrimaryKeySelective(order);
			order = getOrderById(orderId);
			//生成支付流水
			String flowId =Sid.nextShort();
			Flow flow = new Flow();
			flow.setId(flowId);
			flow.setFlowNum(alpayFlowNum);
			flow.setBuyCounts(order.getBuyCounts());
			flow.setCreateTime(new Date());
			flow.setOrderNum(orderId);
			flow.setPaidAmount(paidAmount);
			flow.setPaidMethod(1);
			flow.setProductId(order.getProductId());
			flowMapper.insertSelective(flow);
		}
		
	}
	@Override
	public List<Orders> selectOrder() {
		return ordersMapper.selectOrder();
	}
}
