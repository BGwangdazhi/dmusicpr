package com.dmusic.dao;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import com.common.dbaccessframework.core.*;
import com.common.dbaccessframework.mapping.MysqlReflectMapping;
import com.dmusic.bean.UserBean;
public class UserDAO extends BaseDAO<UserBean>{

	
	
	//²éÑ¯²Ù×÷
	public UserBean getUserByUsername(final String username) {
		String sql="select * from tbl_user where username=?";
		List<UserBean> userList=queryBySql(sql,new IParamBinding(){

			public void bindParam(PreparedStatement pstmt) throws SQLException{
				pstmt.setString(1, username);
			}
	
		},new MysqlReflectMapping<UserBean>(UserBean.class));
		return userList !=null && !userList.isEmpty()?
				userList.get(0):null;
	}
}
