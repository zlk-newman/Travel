package com.qst.db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DButil {
	public static String sql = "jdbc:mysql://localhost:3306/tour?user=root&password=&useSSL=false&useUnicode=true&characterRncoding=utf-8";
	

	static {

		try {
			Class.forName("org.gjt.mm.mysql.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static Connection getConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(sql);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return conn;
	}

	public static void close(ResultSet rs, PreparedStatement stsm, Connection conn) {

		try {
			if (rs != null)
				rs.close();
			if (stsm != null)
				stsm.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}
	
	

	public static void main(String[] args) {

		Connection conn = DButil.getConnection();

		System.out.println("连接成功");

		DButil.close(null, null, conn);

		System.out.println("关闭连接");

	}

	
}
