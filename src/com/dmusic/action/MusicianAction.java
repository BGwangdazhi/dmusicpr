package com.dmusic.action;

import java.util.List;

import com.dmusic.bean.MusicianBean;
import com.dmusic.dao.MusicianDao;

public class MusicianAction {
 
	private MusicianBean musician;
	public MusicianBean getMusician(){
		return musician;
	}
	public void setMusician(MusicianBean musician){
		this.musician = musician;
	}
	private MusicianDao dao = new MusicianDao();
	public String add(){
		dao.addMusician(musician);
		return "succ";
	}
	private List<MusicianBean> reList;
	public List<MusicianBean> getReList(){
		return reList;
	}
	public void setReList(List<MusicianBean> reList) {
		this.reList=reList;
	}
	public String list() {
		reList= dao.getMusicianList();
		return "list";
	}
}
