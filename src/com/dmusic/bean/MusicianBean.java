package com.dmusic.bean;

import com.common.dbaccessframework.annotation.TableBean;
//一个bean对象对应一个数据库中的表
public class MusicianBean {
	private int id;
	private String musician;
	private String name;
	private String wechat;
	private String idcard;
	public int getId() {
		return id;
	}
	@TableBean(fieldName="id")
	public void setId(int id) {
		this.id = id;
	}
	public String getMusician() {
		return musician;
	}
	@TableBean(fieldName="musician")
	public void setMusician(String musician) {
		this.musician = musician;
	}
	public String getName() {
		return name;
	}
	@TableBean(fieldName="name")
	public void setName(String name) {
		this.name = name;
	}
	public String getWechat() {
		return wechat;
	}
	@TableBean(fieldName="wechat")
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
	public String getIdcard() {
		return idcard;
	}
	@TableBean(fieldName="idcard")
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	

}
