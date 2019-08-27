package com.qst.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.qst.db.DButil;
import com.qst.model.User;

public class UserDao {
	
		public User ask(String uname,String pwd) {
			User me = null;
			// 1 获取数据库链接
			Connection conn = DButil.getConnection();
			// 准备sql命令
			String sql ="select * from user where uname=? and pwd=?";
			//sql=sql.replace("table_name", TABLE_NAME);
			// 获取事务对象
			PreparedStatement st = null;
			ResultSet rs=null;
			try {
				st = conn.prepareStatement(sql);
				// 对问号进行替换
				st.setString(1,uname);
				st.setString(2, pwd);
				// 执行sql命令
				 rs = st.executeQuery();
			
				if (rs.next()) {	
					me = new User();
					me.setUname(rs.getString(1));
					me.setPwd(rs.getString(2));
					
				}
					
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				// 关闭数据库
				DButil.close( rs,st, conn);
			}
		        return me;
		}

		public User ask2(String uname) {
			User me = null;
			// 1 获取数据库链接
			Connection conn = DButil.getConnection();
			// 准备sql命令
			String sql ="select * from user where uname=?";
			//sql=sql.replace("table_name", TABLE_NAME);
			// 获取事务对象
			PreparedStatement st = null;
			ResultSet rs=null;
			try {
				st = conn.prepareStatement(sql);
				// 对问号进行替换
				st.setString(1,uname);
				
				// 执行sql命令
				 rs = st.executeQuery();
			
				if (rs.next()) {	
					me = new User();
					me.setUname(rs.getString(1));
					me.setPwd(rs.getString(2));
					
				}
					
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				// 关闭数据库
				DButil.close( rs,st, conn);
			}
		        return me;
		}	
				
			
		public boolean idu(String sql, Object... args) {
			// 1 获取数据库链接
			Connection conn = DButil.getConnection();
			// 准备sql命令
			//sql.replace("table_name", TABLE_NAME);
			// 获取事务对象
			PreparedStatement st = null;
			try {
				st = conn.prepareStatement(sql);
				// 对问号进行替换
				if (args != null) {
					for (int i = 0; i < args.length; i++) {
						st.setObject(i + 1, args[i]);
					}
				}
				// 执行sql命令
				// st.executeQuery();
				int row = st.executeUpdate(); // 实际成功扫行的记录数

				if (row > 0) {
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				// 关闭数据库
				DButil.close(null, st, conn);
			}
			return false;
		}

		// 删除
		public boolean delete(int id) {

			String sql = "delete form user where uname=? ";
			idu(sql, id);
			return true;

		}

		// 更新
		public boolean update( User m) {

			// 准备sql命令
			String sql = "update  user set pwd=? where uname=?";

			return idu(sql,  m.getPwd());
		}

		// 增加
		public boolean insert(User m) {
			String sql = "insert into user(uname,pwd) value(?,?)";

			return idu(sql,  m.getUname(), m.getPwd());
		}
}
