package com.dmusic.action;

import java.io.File;

import com.dmusic.dao.VideoDAO;
import com.dmusic.util.FileUtil;

public class VideoAction {
	private File file;
	private String fileFileName;

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	private VideoDAO dao = new VideoDAO();

	public VideoDAO getDao() {
		return dao;
	}

	public void setDao(VideoDAO dao) {
		this.dao = dao;
	}

	public void upload() {

		FileUtil.copy(file, "d:/create/dmusic/video/" + fileFileName);

		dao.updateVideo("/dmusic/video/" + fileFileName);

	}

	private String video;

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String list() {
		video = dao.getVideo();
		if (video == null) {
			video = "video/video.mp4";
		}

		return "succ";
	}

}
