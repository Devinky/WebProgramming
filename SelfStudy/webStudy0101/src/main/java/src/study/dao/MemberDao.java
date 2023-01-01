package src.study.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import src.study.dbconnect.DBConnect;

public class MemberDao {
	
	private static class Singleton{		
		private static final MemberDao INSTANCE = new MemberDao();		
	}
	
	private MemberDao() {
		System.out.println("기본생성자");
	}
	
	public static MemberDao getInsetance() {
		return Singleton.INSTANCE;
	}
	
	public int MemberInsertDo(String userId, String userPw, String userName, String email) {
		
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "";
		
		try {
			conn = DBConnect.getConnection();
			query = "insert into study0101(userId, userPw, userName, email) values(?,?,?,?)";
			pstm = conn.prepareStatement(query);
			
			pstm.setString(1, userId);
			pstm.setString(2, userPw);
			pstm.setString(3, userName);
			pstm.setString(4, email);
			
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

}
