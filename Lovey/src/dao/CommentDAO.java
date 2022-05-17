package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class CommentDAO {
	
	public int insert(String bid, String writer, String comment) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			String sql = "INSERT INTO comment (bid, writer, cmt)"
					+ " VALUES (?,?,?)";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, bid);
			stmt.setString(2, writer);
			stmt.setString(3, comment);
			
			int count = stmt.executeUpdate(); // return이 1이면 데이터 나온거 2이면 아무것도 안된거

			return (count == 1) ? 1 : 2;

		} finally {
			if (conn != null)
				conn.close();
			if (stmt != null)
				stmt.close();
		}

	}
	
	public ArrayList<CommentObj> getList(String bid) throws NamingException,SQLException{
		Connection conn =null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT cid, bid, writer, cmt, cdate FROM comment where bid = ?";
			conn = ConnectionPool.get();
			stmt= conn.prepareStatement(sql);
			stmt.setString(1, bid);
			rs= stmt.executeQuery();
			
			ArrayList<CommentObj> cmts = new ArrayList<CommentObj>();
			
			while(rs.next()) {
				cmts.add(new CommentObj(rs.getString("cid"),rs.getString("bid"),rs.getString("writer"),rs.getString("cmt"), rs.getString("cdate")));
			}
			
			return cmts;
		}finally {
			if(rs !=null) {
				rs.close();
			}
			if(stmt !=null) {
				stmt.close();
			}
			if(conn !=null) {
				conn.close();
			}
		}
	}
	
	
}
