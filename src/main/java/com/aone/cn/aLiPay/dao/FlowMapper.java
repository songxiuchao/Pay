package com.aone.cn.aLiPay.dao;


import com.aone.cn.aLiPay.model.Flow;

public interface FlowMapper {
	
	/**
	 * 新增支付流水
	 * @param record
	 * @return
	 */
    int insertSelective(Flow record);
}