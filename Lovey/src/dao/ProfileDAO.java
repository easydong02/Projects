package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class ProfileDAO {

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
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
			
		}

	}
	public boolean checkId(String pid)throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM PROFILE WHERE PID = ?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pid);
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

	public int create(String pid, String pnick, String pimage, String pmbti, String pinfo) throws NamingException, SQLException {
		
		if(checkId(pid)) {
			return 0;
		}

		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			String sql = "INSERT INTO profile (pid, pnick, pimage, pmbti, pinfo)"
					+ " VALUES (?,?,?,?,?)";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, pid);
			stmt.setString(2, pnick);
			stmt.setString(3, pimage);
			stmt.setString(4, pmbti);
			stmt.setString(5, pinfo);
			int count = stmt.executeUpdate(); // return이 1이면 데이터 나온거 2이면 아무것도 안된거

			return (count == 1) ? 1 : 2;

		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}

	}
	public int create(String pid, String pnick, String pmbti, String pinfo) throws NamingException, SQLException {
		
		if(checkId(pid)) {
			return 0;
		}
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			String sql = "INSERT INTO profile (pid, pnick, pmbti, pinfo)"
					+ " VALUES (?,?,?,?)";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, pid);
			stmt.setString(2, pnick);
			stmt.setString(3, pmbti);
			stmt.setString(4, pinfo);
			int count = stmt.executeUpdate(); // return이 1이면 데이터 나온거 2이면 아무것도 안된거
			
			return (count == 1) ? 1 : 2;
			
		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
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

public int update(String pid, String pnick, String pimage, String pmbti, String pinfo) throws NamingException, SQLException {
    
    Connection conn = null;
    PreparedStatement stmt = null;
    
    try {
       String sql = "UPDATE profile SET pnick=?, pimage=?, pmbti=?, pinfo=? WHERE pid=?";
       conn = ConnectionPool.get();
       stmt = conn.prepareStatement(sql);
       stmt.setString(1, pnick);
       stmt.setString(2, pimage);
       stmt.setString(3, pmbti);
       stmt.setString(4, pinfo);
       stmt.setString(5, pid);
       
       int count = stmt.executeUpdate(); // return이 1이면 데이터 나온거 2이면 아무것도 안된거
       
       return (count == 1) ? 1 : 2;
       
    } finally {
		if (stmt != null)
			stmt.close();
		if (conn != null)
			conn.close();
	}
    
 }

public int update(String pid, String pnick,  String pmbti, String pinfo) throws NamingException, SQLException {
	
	Connection conn = null;
	PreparedStatement stmt = null;
	
	try {
		String sql = "UPDATE profile SET pnick=?, pmbti=?, pinfo=? WHERE pid=?";
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, pnick);
		stmt.setString(2, pmbti);
		stmt.setString(3, pinfo);
		stmt.setString(4, pid);
		
		int count = stmt.executeUpdate(); // return이 1이면 데이터 나온거 2이면 아무것도 안된거
		
		return (count == 1) ? 1 : 2;
		
	} finally {
		if (stmt != null)
			stmt.close();
		if (conn != null)
			conn.close();
	}
	
}
}
