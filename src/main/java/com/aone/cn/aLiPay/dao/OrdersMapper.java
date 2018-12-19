package com.aone.cn.aLiPay.dao;

import java.util.List;

import com.aone.cn.aLiPay.model.Orders;

public interface OrdersMapper {
    /**
     * 新建订单
     * @param record
     * @return
     */
    int insert(Orders record);
    /**
     * 根据订单id获取订单号
     * @param id
     * @return
     */
    Orders selectByPrimaryKey(String id);
    /**
     * 修改订单状态
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Orders record);
    /**
     * 查看所有订单
     * @return
     */
    List<Orders> selectOrder();
}