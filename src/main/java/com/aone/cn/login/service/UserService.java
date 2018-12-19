package com.aone.cn.login.service;

import com.aone.cn.aLiPay.model.User;
import com.aone.cn.aLiPay.model.vo.UserVo;
import com.github.pagehelper.Page;
/**
 *  用户处理的的相关操作 service
 * @author 开发
 *
 */
public interface UserService {

	/**
	 * 新增用户
	 * @param user
	 */
	public void saveUser(UserVo userVo);
	
	/**
	 * 更新用户
	 * @param user
	 */
	public void updateUserById(User user);
	
	/**
	 * 删除用户
	 * @param userId
	 */
	public void deleteUserById(String userId);
	
	/**
	 * 根据用户名密码获取用户信息
	 * @param userId
	 * @return
	 */
	public User getUserById(String username,String password);
	
	/**
	 * 获取用户列表
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public Page getUserList(int pageNum,int pageSize);
}
