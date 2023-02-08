package org.model2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.model2.dbconnect.DBConnect;

public class ajaxDao {
	
	private static class singleton {
		private static final ajaxDao INSTANCE = new ajaxDao();
	}
	
	private ajaxDao() {
		
	}
	
	public static ajaxDao getInstance() {
		return singleton.INSTANCE;
	}
	
	public int nameChecked(String userName) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String query = "";
				
		try {
			conn = DBConnect.getConnection();
			query = "select count(*) from ajax1 where userName=?";
			pstm = conn.prepareStatement(query);
			
			pstm.setString(1, userName);
			
			rs = pstm.executeQuery();
			
			if(rs!=null) {
				while(rs.next()) {
					result = rs.getInt(1);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstm!=null) pstm.close();
				if(rs!=null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {}
		}
		
		return result;
	}
	
	public int joinOk(String userName, String userAge, String userGender, String userAddr) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "";
		
		try {
			conn = DBConnect.getConnection();
			query = "insert into ajax1(userName, userAge, userGender, userAddr) values(?,?,?,?)";
			pstm = conn.prepareStatement(query);
			
			pstm.setString(1, userName);
			pstm.setString(2, userAge);
			pstm.setString(3, userGender);
			pstm.setString(4, userAddr);
			
			result = pstm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn!=null) conn.close();
				if(pstm!=null) pstm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {}
		}
		
		return result;
	}
	
}
