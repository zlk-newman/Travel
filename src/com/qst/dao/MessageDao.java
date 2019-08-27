package com.qst.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.qst.db.DButil;

import com.qst.model.Message;



public class MessageDao {



	// ��ѯ
	public Message ask(String name,String pho) {
		Message me = null;
		// 1 ��ȡ���ݿ�����
		Connection conn = DButil.getConnection();
		// ׼��sql����
		String sql ="select * from message where name=?,phonenum=?";
		//sql=sql.replace("table_name", TABLE_NAME);
		// ��ȡ�������
		PreparedStatement st = null;
		ResultSet rs=null;
		try {
			st = conn.prepareStatement(sql);
			// ���ʺŽ����滻
			st.setString(1,name);
			st.setString(2, pho);
			// ִ��sql����
			 rs = st.executeQuery();
		
			if (rs.next()) {	
				me = new Message();
				me.setId(rs.getInt(1));
				me.setName(rs.getString(2));
				me.setPrice(rs.getInt(3));
				me.setPhonenumber(rs.getString(4));
				me.setEmail(rs.getString(5));
				me.setDay(rs.getInt(6));
				me.setTicket(rs.getInt(7));
				me.setPname(rs.getString(8));
				me.setHname(rs.getString(9));
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

	

	//��ȫ��
		public List<Message> ask2(String name) {
			//1 ��ȡ���ݿ����� 
			Connection conn =DButil.getConnection();
			
			//׼��sql����
			
			String sql ="select *from message where name=?";
			//sql.replace("table_name", TABLE_NAME);
			//��ȡ������� 
			PreparedStatement  st=null;
			
			try {
				st=conn.prepareStatement(sql);
				//���ʺŽ����滻 
				st.setString(1,name);
				//ִ��sql����
				ResultSet rs=st.executeQuery(); 
				
				List<Message> a1=new ArrayList<Message>();
				
				Message me =null;
				while(rs.next()) {
					me = new Message();
					me.setId(rs.getInt(1));
					me.setName(rs.getString(2));
					me.setPrice(rs.getInt(3));
					me.setPhonenumber(rs.getString(4));
					me.setEmail(rs.getString(5));
					me.setDay(rs.getInt(6));
					me.setTicket(rs.getInt(7));
					me.setPname(rs.getString(8));
					me.setHname(rs.getString(9));
					a1.add(me);
				}
				return a1;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				//�ر����ݿ�
				DButil.close(null,st,conn);
			}
			
				
			
			return null;
		}
		// ��ѯ
		public Message ask3(String pho) {
			Message me = null;
			// 1 ��ȡ���ݿ�����
			Connection conn = DButil.getConnection();
			// ׼��sql����
			String sql ="select * from message where phonenum=?";
			//sql=sql.replace("table_name", TABLE_NAME);
			// ��ȡ�������
			PreparedStatement st = null;
			ResultSet rs=null;
			try {
				st = conn.prepareStatement(sql);
				// ���ʺŽ����滻
				st.setString(1,pho);
				//st.setString(2, pla);
				// ִ��sql����
				 rs = st.executeQuery();
			
				if (rs.next()) {	
					me = new Message();
					me.setId(rs.getInt(1));
					me.setName(rs.getString(2));
					me.setPrice(rs.getInt(3));
					me.setPhonenumber(rs.getString(4));
					me.setEmail(rs.getString(5));
					me.setDay(rs.getInt(6));
					me.setTicket(rs.getInt(7));
					me.setPname(rs.getString(8));
					me.setHname(rs.getString(9));
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

	
	public boolean delete2(String pho) {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		//׼��sql����
		//String sql="delete from package where phonenum=? ";//
		String sql="DELETE FROM message WHERE phonenum=?";
		
		//sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			
			//���ʺŽ����滻 
			st.setString(1, pho);
			//.....
			
			//ִ��sql����
			//st.executeQuery();
			int row= st.executeUpdate(); //ʵ�ʳɹ�ɨ�еļ�¼��
			
			if(row >0) {
				return true ;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//�ر����ݿ�
			DButil.close(null,st,conn);
		}
		
		return false;
	}
	
	// ɾ��
	public boolean delete(String pho) {

		String sql = "delete form message where phonenum=? ";
		idu(sql, pho);
		return true;

	}

	// ����
	public boolean update(String phone,Message m) {

		// ׼��sql����
		String sql = "update  message set name=?, price=?,email=?,day=?,htickets=?,pname=?,hname=? where phonenum=?";

		return idu(sql,  m.getName(),m.getPrice(),m.getEmail(),m.getDay(),m.getTicket(), m.getPname(),
				m.getHname(),phone);
	}

	// ����
	public boolean insert(Message m) {
		String sql = "insert into message(name,price,phonenum,email,day,htickets,pname,hname) value(?,?,?,?,?,?,?,?)";

		return idu(sql,  m.getName(), m.getPrice(), m.getPhonenumber(), m.getEmail(),m.getDay(),m.getTicket(),m.getPname(),
				m.getHname());
	}

}
