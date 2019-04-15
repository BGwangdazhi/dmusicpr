package com.dmusic.dao;

import com.common.dbaccessframework.core.BaseDAO;
import com.dmusic.bean.MusicianBean;
import com.dmusic.bean.VideoBean;

import java.sql.SQLException;
import java.util.List;
import java.sql.PreparedStatement;
import com.common.dbaccessframework.core.IParamBinding;
import com.common.dbaccessframework.mapping.MysqlReflectMapping;

//DAO²ã ÔöÉ¾¸Ä²é
public class MusicianDao extends BaseDAO<MusicianBean>{
	public void addMusician(MusicianBean bean){
		String sql = "insert into tbl_musician (musician,name,wechat,idcard) values(?,?,?,?)";
		updateBySql(sql,new IParamBinding() {
			
			@Override
			public void bindParam(PreparedStatement pstmt) throws SQLException {
				// TODO Auto-generated method stub
				pstmt.setString(1, bean.getMusician());
				pstmt.setString(2, bean.getName());
				pstmt.setString(3, bean.getWechat());
				pstmt.setString(4, bean.getIdcard());
			}
		});
	} 
	public  List<MusicianBean> getMusicianList(){
		return queryBySql("select * from tbl_musician",new MysqlReflectMapping<MusicianBean>(MusicianBean.class));
	}
}
