package com.dmusic.bean;

import com.common.dbaccessframework.annotation.TableBean;

public class VideoBean {

	private int id;
	private String video;

	public int getId() {
		return id;
	}

	@TableBean(fieldName = "id")
	public void setId(int id) {
		this.id = id;
	}

	public String getVideo() {
		return video;
	}

	@TableBean(fieldName = "video")
	public void setVideo(String video) {
		this.video = video;
	}
}
