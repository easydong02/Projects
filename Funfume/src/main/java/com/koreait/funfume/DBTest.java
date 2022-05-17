/**
 * 
 */
package com.koreait.funfume;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * @author easyd
 *
 */
public class DBTest extends HttpServlet{
	 
	InitialContext context;
	DataSource ds;
	Connection con;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		try {
			context = new InitialContext();
			ds=(DataSource)context.lookup("java:comp/env/jdbc/easydong02");
			con=ds.getConnection();
			PrintWriter out=response.getWriter();
			out.print("con is "+con);
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
