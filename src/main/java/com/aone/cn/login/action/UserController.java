package com.aone.cn.login.action;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.aone.cn.aLiPay.model.User;
import com.aone.cn.aLiPay.model.vo.UserVo;
import com.aone.cn.login.service.UserService;
import com.github.pagehelper.Page;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;	
	/**
	 * 默认页面跳转登陆页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/login")
	public String login() throws Exception {
		return "login";
	}
	/**
	 * 登陆
	 * @return
	 */
	@RequestMapping("/loginAction")
	public ModelAndView loginAction(String username,String password){
		User u=userService.getUserById(username,password);
		if(u!=null){
			ModelAndView mv=new ModelAndView("main");
			return mv;
		}else{
			ModelAndView mv=new ModelAndView("login");
			return mv;
		}
	}
	/**
	 * 查看用户
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/selectAllUser")
	@ResponseBody
	public Map selectAllUser(){
		Map map = new HashMap();
		Page page=userService.getUserList(1,7);
        map.put("list", page);
        map.put("totalPage", page.getPages());
		return map;
	}
	/**
	 * 新增用户
	 * @param user
	 * @return
	 */
	@RequestMapping("/insertUser")
	public ModelAndView insertUser(UserVo userVo){
		ModelAndView mv=new ModelAndView("user-list");
		userService.saveUser(userVo);
		return mv;
	}
	/**
	 * 删除用户
	 * @param id
	 * @return
	 */
	@RequestMapping("delUser")
	public ModelAndView delUser(String id){
		ModelAndView mv=new ModelAndView();
		userService.deleteUserById(id);
		mv.setView(new MappingJackson2JsonView());
		return mv;
	}
}
