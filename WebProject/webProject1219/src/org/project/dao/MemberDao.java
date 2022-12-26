package org.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.project.dbconnect.DBConnect;

public class MemberDao {
	
	//싱글톤 패턴
//	private static final MemberDao INSTANCE = new MemberDao();
//	
//	private MemberDao() {
//		System.out.println("MemberDao");
//	}
//	
//	public static MemberDao hetInstance() {
//		return INSTANCE;
//	}
	
	//싱글톤 패턴2
	private static class SingleTon{
		private static final MemberDao INSTANCE = new MemberDao();
	}
	
	private MemberDao() {
		System.out.println("MemberDao");
	}
	
	public static MemberDao getInstance() {
		return SingleTon.INSTANCE;
	}

	public int insertDo(String userId, String userPw, String email) {
		
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "";
		
		try {
			conn = DBConnect.getConnection();
			query = "insert into member1219(userId, userPw, email) values(?,?,?)";
			pstm = conn.prepareStatement(query);
			
			pstm.setString(1, userId);
			pstm.setString(2, userPw);
			pstm.setString(3, email);
			
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
	
	public int JoinOkDo(String userId, String userPw, String userName, String gender, String hobbit, 
			String phone, String memo) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "";
		
		try {
			conn = DBConnect.getConnection();
			query = "insert into member1219(userId, userPw, userName, gender, hobbit, phone, memo) "
					+ "values(?,?,?,?,?,?,?)";
			pstm = conn.prepareStatement(query);
			
			pstm.setString(1, userId);
			pstm.setString(2, userPw);
			pstm.setString(3, userName);
			pstm.setString(4, gender);
			pstm.setString(5, hobbit);
			pstm.setString(6, phone);
			pstm.setString(7, memo);
			
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
	
//	public MemberDao() {
//		System.out.println("MemberDao");
//	}

}
