package com.aone.cn.aLiPay.model;

import java.util.Date;
/**
 * 支付流水
 * @author 开发
 *
 */
public class Flow {
	/**
	 * 主键
	 */
    private String id;
    /**
     * 支付宝 交易号
     */
    private String flowNum;
    /**
     * 订单号
     */
    private String orderNum;
    /**
     * 商品id
     */
    private String productId;
    /**
     * 交易金额
     */
    private String paidAmount;
    /**
     * 交易数量
     */
    private Integer paidMethod;
    /**
     * 购买数量
     */
    private Integer buyCounts;
    /**
     * 创建时间
     */
    private Date createTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getFlowNum() {
        return flowNum;
    }

    public void setFlowNum(String flowNum) {
        this.flowNum = flowNum == null ? null : flowNum.trim();
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum == null ? null : orderNum.trim();
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }

    public String getPaidAmount() {
        return paidAmount;
    }

    public void setPaidAmount(String paidAmount) {
        this.paidAmount = paidAmount == null ? null : paidAmount.trim();
    }

    public Integer getPaidMethod() {
        return paidMethod;
    }

    public void setPaidMethod(Integer paidMethod) {
        this.paidMethod = paidMethod;
    }

    public Integer getBuyCounts() {
        return buyCounts;
    }

    public void setBuyCounts(Integer buyCounts) {
        this.buyCounts = buyCounts;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}