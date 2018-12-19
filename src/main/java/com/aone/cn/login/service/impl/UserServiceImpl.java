package com.aone.cn.login.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aone.cn.aLiPay.dao.UserMapper;
import com.aone.cn.aLiPay.model.User;
import com.aone.cn.aLiPay.model.vo.UserVo;
import com.aone.cn.aLiPay.util.Sid;
import com.aone.cn.login.service.UserService;


@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	public void saveUser(UserVo userVo) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
		if(userVo!=null){
			User user=new User(Sid.nextShort(),userVo.getUsername(),userVo.getPassword(),userVo.getSex(),userVo.getAddress1()+","+userVo.getAddress2()+","+userVo.getAddress3()+","+userVo.getAddress4(),userVo.getOther(),df.format(new Date()));
			userMapper.insert(user);
		}
	}

	public void updateUserById(User user) {
		userMapper.updateByPrimaryKeySelective(user);
	}

	public void deleteUserById(String userId) {
		userMapper.deleteByPrimaryKey(userId);
	}

	public User getUserById(String username,String password) {
		return userMapper.selectByPrimaryKey(username,password);
	}
	
	//分页查
	@SuppressWarnings({ "rawtypes", "unused" })
	public Page getUserList(int pageNum,int pageSize) {
		Page page = PageHelper.startPage(pageNum, pageSize);
		List<User> userList = userMapper.selectByExample();
        return page;
    }

}
