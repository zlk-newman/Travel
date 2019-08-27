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



	// 查询
	public Message ask(String name,String pho) {
		Message me = null;
		// 1 获取数据库链接
		Connection conn = DButil.getConnection();
		// 准备sql命令
		String sql ="select * from message where name=?,phonenum=?";
		//sql=sql.replace("table_name", TABLE_NAME);
		// 获取事务对象
		PreparedStatement st = null;
		ResultSet rs=null;
		try {
			st = conn.prepareStatement(sql);
			// 对问号进行替换
			st.setString(1,name);
			st.setString(2, pho);
			// 执行sql命令
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
			// 关闭数据库
			DButil.close( rs,st, conn);
		}
	        return me;
	}

	

	//查全部
		public List<Message> ask2(String name) {
			//1 获取数据库链接 
			Connection conn =DButil.getConnection();
			
			//准备sql命令
			
			String sql ="select *from message where name=?";
			//sql.replace("table_name", TABLE_NAME);
			//获取事务对象 
			PreparedStatement  st=null;
			
			try {
				st=conn.prepareStatement(sql);
				//对问号进行替换 
				st.setString(1,name);
				//执行sql命令
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
				//关闭数据库
				DButil.close(null,st,conn);
			}
			
				
			
			return null;
		}
		// 查询
		public Message ask3(String pho) {
			Message me = null;
			// 1 获取数据库链接
			Connection conn = DButil.getConnection();
			// 准备sql命令
			String sql ="select * from message where phonenum=?";
			//sql=sql.replace("table_name", TABLE_NAME);
			// 获取事务对象
			PreparedStatement st = null;
			ResultSet rs=null;
			try {
				st = conn.prepareStatement(sql);
				// 对问号进行替换
				st.setString(1,pho);
				//st.setString(2, pla);
				// 执行sql命令
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

	
	public boolean delete2(String pho) {
		//1 获取数据库链接 
		Connection conn =DButil.getConnection();
		//准备sql命令
		//String sql="delete from package where phonenum=? ";//
		String sql="DELETE FROM message WHERE phonenum=?";
		
		//sql.replace("table_name", TABLE_NAME);
		//获取事务对象 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			
			//对问号进行替换 
			st.setString(1, pho);
			//.....
			
			//执行sql命令
			//st.executeQuery();
			int row= st.executeUpdate(); //实际成功扫行的记录数
			
			if(row >0) {
				return true ;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//关闭数据库
			DButil.close(null,st,conn);
		}
		
		return false;
	}
	
	// 删除
	public boolean delete(String pho) {

		String sql = "delete form message where phonenum=? ";
		idu(sql, pho);
		return true;

	}

	// 更新
	public boolean update(String phone,Message m) {

		// 准备sql命令
		String sql = "update  message set name=?, price=?,email=?,day=?,htickets=?,pname=?,hname=? where phonenum=?";

		return idu(sql,  m.getName(),m.getPrice(),m.getEmail(),m.getDay(),m.getTicket(), m.getPname(),
				m.getHname(),phone);
	}

	// 增加
	public boolean insert(Message m) {
		String sql = "insert into message(name,price,phonenum,email,day,htickets,pname,hname) value(?,?,?,?,?,?,?,?)";

		return idu(sql,  m.getName(), m.getPrice(), m.getPhonenumber(), m.getEmail(),m.getDay(),m.getTicket(),m.getPname(),
				m.getHname());
	}

}
