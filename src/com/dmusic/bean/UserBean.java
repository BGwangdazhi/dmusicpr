package com.dmusic.bean;
import com.common.dbaccessframework.annotation.*;
public class UserBean {
	private int id;
	private String username;
	private String password;
	
	public int getId() {
		return id;
	}
    
	@TableBean(fieldName="id")
	public void setId(int id) {
		this.id = id; 
	
	}
	
	public String getUsername() {
		return username;
	}
	@TableBean(fieldName="username")
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	@TableBean(fieldName="password")
	public void setPassword(String password) {
		this.password = password;
	}
	
}
