package com.dmusic.action;


import com.dmusic.dao.VideoDAO;
//action ��д�ӿڷ�������jsp�з��ʽӿڷ������� index_*.action
//2 ����ҵ���߼�
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
