package com.aone.cn.aLiPay.service;

import java.util.List;

import com.aone.cn.aLiPay.model.Orders;

public interface OrdersService {

	/**
	 * 新增订单
	 * @param order
	 */
	public void saveOrder(Orders order);
	/**
	 * 获取订单
	 * @param orderId
	 * @return
	 */
	public Orders getOrderById(String orderId);
	/**
	 * 修改叮当状态，改为 支付成功，已付款; 同时新增支付流水
	 * @param orderId
	 * @param alpayFlowNum
	 * @param paidAmount
	 */
	public void updateOrderStatus(String orderId, String alpayFlowNum, String paidAmount);
	/**
     * 查看所有订单
     * @return
     */
    List<Orders> selectOrder();
	
}
