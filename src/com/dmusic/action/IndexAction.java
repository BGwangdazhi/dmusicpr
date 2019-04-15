package com.dmusic.action;


import com.dmusic.dao.VideoDAO;
//action 编写接口方法，在jsp中访问接口方法都是 index_*.action
//2 处理业务逻辑
public class IndexAction {
	private VideoDAO dao = new VideoDAO();
	private String video;

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String dindex() {
		video = dao.getVideo();
		if (video == null) {
			
			video = "video/video.mp4";
		}
		return "dindex";

	}

}
