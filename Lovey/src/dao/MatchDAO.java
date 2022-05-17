package dao;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class MatchDAO {

	public ArrayList<MatchObj> getList()
		throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM profile";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			ArrayList<MatchObj> matchList = new ArrayList<MatchObj>();

			while(rs.next()) {
				matchList.add(new MatchObj(rs.getString("pid"),
						rs.getString("pnick"),rs.getString("pimage"),
						rs.getString("pmbti"),rs.getString("pinfo")
						));
			} return matchList;
		}finally {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		}
	}
	
	public MatchObj getDetail(String pid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try { 
			String sql = "SELECT * FROM profile WHERE pid = ?";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, pid);
				
			rs = stmt.executeQuery();
			
			rs.next();
			
			String id = rs.getString(1);
			String nick = rs.getString(2);
			String image = rs.getString(3);
			String mbti = rs.getString(4);
			String info = rs.getString(5);

			MatchObj match = new MatchObj(id, nick, image, mbti, info);
			
			return match;
			
		}finally {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}

	}
	
//	회원 탈퇴시에는 없어지겠지 ?...
	
//	public int delete(String id)
//	throws NamingException, SQLException {
//		Connection conn = null;
//		PreparedStatement stmt = null;
//		
//		try {
//			String sql = "DELETE FROM product WHERE pid =?";
//			conn = ConnectionPool.get();
//			stmt = conn.prepareStatement(sql);
//				stmt.setString(1, id);
//
//			int count = stmt.executeUpdate();
//			return (count == 1) ? 1 : 0;
//		}finally {
//			if(stmt != null) stmt.close();
//			if(conn != null) conn.close();
//		}
//	}
//	
//	
//	
//	
}
