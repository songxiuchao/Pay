package com.aone.cn.aLiPay.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.UUID;
/**
 * 获取唯一性订单号
 * @author 开发
 *
 */
public class RandomNumUtil {
	// 订单号
	public static String getOrderIdByUUId() {
		int machineId = 2;// 最大支持1-9个集群机器部署
		int hashCodeV = UUID.randomUUID().toString().hashCode();
		System.out.println(hashCodeV);
		if (hashCodeV < 0) {// 有可能是负数
			hashCodeV = -hashCodeV;
		}
		// 0 代表前面补充0
		// 4 代表长度为4
		// d 代表参数为正数型
		//return machineId + String.format("%015d", hashCodeV);
		return tagyMdHms() + machineId + String.format("%012d", hashCodeV);
	}
	
	public static String getOrderIdByUUId2() {
		int machineId = 3;// 最大支持1-9个集群机器部署
		int hashCodeV = UUID.randomUUID().toString().hashCode();
		System.out.println(hashCodeV);
		if (hashCodeV < 0) {// 有可能是负数
			hashCodeV = -hashCodeV;
		}
		return tagyMdHms() + machineId + String.format("%012d", hashCodeV);
	}

	public static String tagyMdHms() {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		String time = formatter.format(cal.getTime()).toString();
		return time;
	}
	public static void main(String[] args) {
		for (int i=0; i<1000; i++) {
			System.out.println(getOrderIdByUUId2());
		}
	}
}
