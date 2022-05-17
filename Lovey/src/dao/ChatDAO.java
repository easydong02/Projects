package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class ChatDAO {

	
	// 발신된 메세지의 내용 db에 저장
	public int send( String csendid, String crecid, String ctitle, String cmsg) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			String sql = "INSERT INTO chat (csendid, crecid, ctitle, cmsg)"
					+ " VALUES (?,?,?,?)";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, csendid);
			stmt.setString(2, crecid);
			stmt.setString(3, ctitle);
			stmt.setString(4, cmsg);
			
			int count = stmt.executeUpdate(); // return이 1이면 데이터 나온거 2이면 아무것도 안된거

			return (count == 1) ? 1 : 2;

		} finally {
			if (conn != null)
				conn.close();
			if (stmt != null)
				stmt.close();
		}

	}
	
	
	public ArrayList<ChatObj> getChatList(String crecid) throws NamingException,SQLException{
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM chat where crecid=?";
			conn = ConnectionPool.get();
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1,crecid );
			rs= pstmt.executeQuery();
			
			
			ArrayList<ChatObj> chats = new ArrayList<ChatObj>();
			
			while(rs.next()) {
				chats.add(new ChatObj(rs.getString("csendid"),rs.getString("crecid"),rs.getString("ctitle"),
						rs.getString("ctime"),rs.getString("cmsg")));
			}
			
			return chats;
		}finally {
			if(rs !=null) {
				rs.close();
			}
			if(pstmt !=null) {
				pstmt.close();
			}
			if(conn !=null) {
				conn.close();
			}
		}
	}
	

}
