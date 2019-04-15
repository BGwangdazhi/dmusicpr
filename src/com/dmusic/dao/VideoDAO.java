package com.dmusic.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.common.dbaccessframework.core.BaseDAO;
import com.common.dbaccessframework.core.IParamBinding;
import com.common.dbaccessframework.mapping.MysqlReflectMapping;
import com.dmusic.bean.VideoBean;

public class VideoDAO extends BaseDAO<VideoBean> {
	
	public String getVideo() {
		String sql = "select * from tbl_video";
		List<VideoBean> videoList = queryBySql(sql, new MysqlReflectMapping<VideoBean>(VideoBean.class));

		if (videoList != null && !videoList.isEmpty()) {
			return videoList.get(0).getVideo();
			
		} else {
			return null;
		}
	}

	

	public void updateVideo(final String video) {
		String sql = "";
		if (getVideo() == null) {
			sql = "insert into tbl_video(video) values(?)";
		}

		else {
			sql = "update tbl_video set video = ?";
		}
		
		updateBySql(sql, new IParamBinding() {

			public void bindParam(PreparedStatement pstmt) throws SQLException {
				pstmt.setString(1, video);
			}
		});
	}

}
