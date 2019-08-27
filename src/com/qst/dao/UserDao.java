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
			// 1 ��ȡ���ݿ�����
			Connection conn = DButil.getConnection();
			// ׼��sql����
			String sql ="select * from user where uname=? and pwd=?";
			//sql=sql.replace("table_name", TABLE_NAME);
			// ��ȡ�������
			PreparedStatement st = null;
			ResultSet rs=null;
			try {
				st = conn.prepareStatement(sql);
				// ���ʺŽ����滻
				st.setString(1,uname);
				st.setString(2, pwd);
				// ִ��sql����
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
				// �ر����ݿ�
				DButil.close( rs,st, conn);
			}
		        return me;
		}

		public User ask2(String uname) {
			User me = null;
			// 1 ��ȡ���ݿ�����
			Connection conn = DButil.getConnection();
			// ׼��sql����
			String sql ="select * from user where uname=?";
			//sql=sql.replace("table_name", TABLE_NAME);
			// ��ȡ�������
			PreparedStatement st = null;
			ResultSet rs=null;
			try {
				st = conn.prepareStatement(sql);
				// ���ʺŽ����滻
				st.setString(1,uname);
				
				// ִ��sql����
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
				// �ر����ݿ�
				DButil.close( rs,st, conn);
			}
		        return me;
		}	
				
			
		public boolean idu(String sql, Object... args) {
			// 1 ��ȡ���ݿ�����
			Connection conn = DButil.getConnection();
			// ׼��sql����
			//sql.replace("table_name", TABLE_NAME);
			// ��ȡ�������
			PreparedStatement st = null;
			try {
				st = conn.prepareStatement(sql);
				// ���ʺŽ����滻
				if (args != null) {
					for (int i = 0; i < args.length; i++) {
						st.setObject(i + 1, args[i]);
					}
				}
				// ִ��sql����
				// st.executeQuery();
				int row = st.executeUpdate(); // ʵ�ʳɹ�ɨ�еļ�¼��

				if (row > 0) {
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				// �ر����ݿ�
				DButil.close(null, st, conn);
			}
			return false;
		}

		// ɾ��
		public boolean delete(int id) {

			String sql = "delete form user where uname=? ";
			idu(sql, id);
			return true;

		}

		// ����
		public boolean update( User m) {

			// ׼��sql����
			String sql = "update  user set pwd=? where uname=?";

			return idu(sql,  m.getPwd());
		}

		// ����
		public boolean insert(User m) {
			String sql = "insert into user(uname,pwd) value(?,?)";

			return idu(sql,  m.getUname(), m.getPwd());
		}
}
