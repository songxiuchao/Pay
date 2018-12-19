package com.aone.cn.aLiPay.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.aone.cn.aLiPay.model.User;

public interface UserMapper {
   
    //增
    int insert(User record);
    //改
    int updateByPrimaryKeySelective(User record);
    //删除用户
    int deleteByPrimaryKey(String id);    
    //根据用户名密码获取用户信息
    User selectByPrimaryKey(@Param("username")String username,@Param("password")String password);
    //查所有
    List<User> selectByExample();
}