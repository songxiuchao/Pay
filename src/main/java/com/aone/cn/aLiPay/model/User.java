package com.aone.cn.aLiPay.model;
/**
 * 用户信息表
 * @author 开发
 *
 */
public class User {
	/**
	 * 主键id
	 */
    private String id;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    private String password;
    /**
     * 性别
     */
    private String sex;
    /**
     * 地址
     */
    private String address;
    /**
     * 其它
     */
    private String other;
    /**
     * 创建时间
     */
    private String createDate;

	public User(String id, String username, String password, String sex, String address, String other,
			String createDate) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.address = address;
		this.other = other;
		this.createDate = createDate;
	}

	public User() {
		super();
	}

	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    
    
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
}