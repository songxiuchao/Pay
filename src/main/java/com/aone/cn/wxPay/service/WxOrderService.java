package com.aone.cn.wxPay.service;

import javax.servlet.http.HttpServletRequest;

import com.aone.cn.wxPay.entity.PayResult;
import com.aone.cn.wxPay.entity.PreOrderResult;
/**
 * 处理微信支付的相关订单业务
 * @author 开发
 *
 */
public interface WxOrderService {
	
	/**
	 * 调用微信接口进行统一下单
	 * @param body
	 * @param out_trade_no
	 * @param total_fee
	 * @return
	 * @throws Exception
	 */
	public PreOrderResult placeOrder(String body, String out_trade_no,String total_fee) throws Exception;
	
	/**
	 * 获取支付结果
	 * @param request
	 * @return
	 * @throws Exception
	 */
	public PayResult getWxPayResult(HttpServletRequest request) throws Exception;
	
}
