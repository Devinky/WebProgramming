package org.study.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.study.dbconnect.DBConnect;
import org.study.dto.MemberDto;

public class MemberDao {

	private static class Singleton {
		private static final MemberDao INSTANCE = new MemberDao();
	}

	private MemberDao() {

	}

	public static MemberDao getInstance() {
		return Singleton.INSTANCE;
	}

	public int insertDo(String userId, String userPw, String userName) {
		int result = 0;

		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "";

		try {
			conn = DBConnect.getConnection();
			query = "insert into member1228(userId, userPw, userName) values(?,?,?)";
			pstm = conn.prepareStatement(query);
			
			pstm.setString(1, userId);
			pstm.setString(2, userPw);
			pstm.setString(3, userName);
			
			result = pstm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn!=null) conn.close();
				if(pstm!=null) pstm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {}
		} 

		return result;
	}
	
	public int loginDo(String userId, String userPw) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "";
		ResultSet rs = null;
		
		try {
			conn = DBConnect.getConnection();
			query = "select count(*) from member1228 where userId=? and userPw=?";
			pstm = conn.prepareStatement(query);
			
			pstm.setString(1, userId);
			pstm.setString(2, userPw);
			
			rs = pstm.executeQuery();
			
			if(rs!=null) {
				while(rs.next()) {
					result = rs.getInt(1);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstm.close();
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	public ArrayList<MemberDto> memberListDo(){
		ArrayList<MemberDto> mList = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "";
		ResultSet rs = null;
		
		try {
			conn = DBConnect.getConnection();
			query = "select * from member1228";
			pstm = conn.prepareStatement(query);
			rs = pstm.executeQuery();
			
			if(rs!=null) {
				while(rs.next()) {
					mList.add(new MemberDto(rs.getString(1), rs.getString(2), rs.getString(3)));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn!=null) conn.close();
				if(pstm!=null) pstm.close();
				if(rs!=null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {}
		}
		
		return mList;
	}

	public MemberDto memberViewDo(String userId) {
		MemberDto member = null;
		
		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "";
		ResultSet rs = null;
		
		try {
			conn = DBConnect.getConnection();
			query = "select * from member1228 where userId=?";
			pstm = conn.prepareStatement(query);
			
			pstm.setString(1, userId);
			
			rs = pstm.executeQuery();
			
			if(rs!=null) {
				while(rs.next()) {
					member = new MemberDto(rs.getString(1), rs.getString(2), rs.getString(3));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn!=null) conn.close();
				if(pstm!=null) pstm.close();
				if(rs!=null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {}
		}
		
		return member;
	}

}
