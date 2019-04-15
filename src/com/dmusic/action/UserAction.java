package com.dmusic.action;

import com.dmusic.bean.UserBean;
import com.dmusic.dao.UserDAO;

public class UserAction {
	private String msg;
	private UserBean user;

	public void setUser(UserBean user) {
		this.user = user;
	}

	public UserBean getUser() {
		return user;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	private UserDAO dao = new UserDAO();

	public String login() {
		UserBean u = dao.getUserByUsername(user.getUsername());
		if (u == null) {
			setMsg("���û�������");
			return "fail";
		}
		if (!u.getPassword().equals(user.getPassword())) {
			setMsg("�������");
			return "fail";
		}
		return "succ";
	}

}