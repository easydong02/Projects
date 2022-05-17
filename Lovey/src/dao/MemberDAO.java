package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class MemberDAO {

	public int login(String uid, String upassword) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT uid, upassword FROM user WHERE uid = ?";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, uid);
			rs = stmt.executeQuery();
			if (!rs.next())
				return 1;
			if (!upassword.equals(rs.getString("upassword")))
				return 2;

			return 0;
		} finally {
			if (rs != null)
				rs.close();
			if (conn != null)
				conn.close();
			if (stmt != null)
				stmt.close();
		}

	}
	public boolean checkId(String uid)throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM USER WHERE UID = ?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			return rs.next();
			
		}finally {
			if(rs !=null) {
				rs.close();
			}
			if(pstmt !=null) {
				pstmt.close();
			}
			if( conn !=null) {
				conn.close();
			}
		}
	}

	public int join(String uid, String upassword, String uname, String ugender, String uphone, String uaddress, String ubirth,
			String uemail) throws NamingException, SQLException {
		
		if(checkId(uid)) {
			return 0;
		}

		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			String sql = "INSERT INTO user (uid, upassword, uname, ugender, uphone, uaddress, ubirth, uemail)"
					+ " VALUES (?,?,?,?,?,?,?,?)";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, uid);
			stmt.setString(2, upassword);
			stmt.setString(3, uname);
			stmt.setString(4, ugender);
			stmt.setString(5, uphone);
			stmt.setString(6, uaddress);
			stmt.setString(7, ubirth);
			stmt.setString(8, uemail);
			int count = stmt.executeUpdate(); // return이 1이면 데이터 나온거 2이면 아무것도 안된거

			return (count == 1) ? 1 : 2;

		} finally {
			if (conn != null)
				conn.close();
			if (stmt != null)
				stmt.close();
		}

	}

	public ArrayList<MemberObj> getList() throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM user";

			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();

			ArrayList<MemberObj> members = new ArrayList<MemberObj>();

			while (rs.next()) {
				members.add(new MemberObj(rs.getString("uid"), rs.getString("upassword"), rs.getString("uname"),
						rs.getString("ugender"), rs.getString("uphone"), rs.getString("uaddress"), rs.getString("ubirth"),
						rs.getString("uemail")));
			}
			return members;

		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
public boolean delete(String uid, String upass)throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "DELETE FROM USER WHERE UID = ? AND UPASSWORD =?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			pstmt.setString(2, upass);
			int count = pstmt.executeUpdate();
			return (count==1)? true : false;
			
		}finally {
			if(pstmt !=null) {
				pstmt.close();
			}
			if( conn !=null) {
				conn.close();
			}
		}
	}
}
