package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class BoardDAO {
	public ArrayList<BoardObj> getList() throws NamingException,SQLException{
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT bid,btitle,bcontent,bmember,bfilename,bdate FROM board";
			conn = ConnectionPool.get();
			pstmt= conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			
			ArrayList<BoardObj> boards = new ArrayList<BoardObj>();
			
			while(rs.next()) {
				boards.add(new BoardObj(rs.getString("bid"),rs.getString("btitle"),rs.getString("bcontent"),
						rs.getString("bmember"),rs.getString("bfilename"),rs.getString("bdate")));
			}
			
			return boards;
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
	
	public int join( String btitle, String bcontent, String bmember, String bfilename) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			String sql = "INSERT INTO board ( btitle, bcontent, bmember, bfilename)"
					+ " VALUES (?,?,?,?)";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, btitle);
			stmt.setString(2, bcontent);
			stmt.setString(3, bmember);
			stmt.setString(4, bfilename);
			
			int count = stmt.executeUpdate(); // return�씠 1�씠硫� �뜲�씠�꽣 �굹�삩嫄� 2�씠硫� �븘臾닿쾬�룄 �븞�맂嫄�

			return (count == 1) ? 1 : 2;

		} finally {
			if (conn != null)
				conn.close();
			if (stmt != null)
				stmt.close();
		}

	}
	public int join( String btitle, String bcontent, String bmember) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			String sql = "INSERT INTO board ( btitle, bcontent, bmember)"
					+ " VALUES (?,?,?)";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, btitle);
			stmt.setString(2, bcontent);
			stmt.setString(3, bmember);
			
			int count = stmt.executeUpdate(); // return�씠 1�씠硫� �뜲�씠�꽣 �굹�삩嫄� 2�씠硫� �븘臾닿쾬�룄 �븞�맂嫄�
			
			return (count == 1) ? 1 : 2;
			
		} finally {
			if (conn != null)
				conn.close();
			if (stmt != null)
				stmt.close();
		}
		
	}
	
	public BoardObj getDetail(String bid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try { 
			String sql = "SELECT * FROM board WHERE bid = ?";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, bid);
			rs = stmt.executeQuery();
			
			rs.next();
			
			String id = rs.getString(1);
			String title = rs.getString(2);
			String content = rs.getString(3);
			String member = rs.getString(4);
			String filename = rs.getString(5);
			String date = rs.getString(6);

			BoardObj board = new BoardObj(id, title, content, member, filename, date);
			
			return board;
		}finally {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
		
		
		
		
	}
	
	
	
}
