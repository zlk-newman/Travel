package com.qst.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.qst.db.DButil;
import com.qst.model.Hotel;


//对套餐表的增删改查 

public class HotelDao {
	//用final类关键字修饰的变量常量 ，java中常量全部大写
	//private final String TABLE_NAME="hotel"; 
	
	public boolean insert(Hotel bean) {
		//1 获取数据库链接 
		Connection conn =DButil.getConnection();
		//准备sql命令
		String sql ="insert into hotel(hid,hname,hpri,hdes,hguide,hreviews,hpic)value(?,?,?,?,?,?,?)";
		//sql.replace("table_name", TABLE_NAME);
		//获取事务对象 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//对问号进行替换 
			st.setInt(1, bean.getHid());
			st.setString(2,bean.getHname());
			st.setInt(3, bean.getHpri());
			st.setString(4,bean.getHdes());
			st.setString(5, bean.getHguide());
			st.setString(6, bean.getHreviews());
			st.setString(7,bean.getHpic());
			//执行sql命令
			//st.executeQuery();
			int row= st.executeUpdate(); //实际成功扫行的记录数
			if(row >0) {
				return true ;
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}
	public boolean delete(int  hid) {
		//1 获取数据库链接 
		Connection conn =DButil.getConnection();
		//准备sql命令
		String sql="delete form hotel where hid=?";
		//String sql ="insert into table_name(id,email,username,pwd,regtime,lastindate)value(?,?,?,?,?)";
		
		//sql.replace("table_name", TABLE_NAME);
		//获取事务对象 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			
			//对问号进行替换 
			st.setInt(1, hid);
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
			DButil.close(null,null,null);
		}
		
		return false;
	}
	
/**
 * 修改制定id的记录值 
 * @param id
 * @param bean
 * @return 
 */
	
	
	public boolean update(int id, Hotel bean) {
		//1 获取数据库链接 
		Connection conn =DButil.getConnection();
		//准备sql命令
		String sql ="update  hotel set hname=?,hpri=?,hdes=?,hguide=?,hreviews=?,hpic=? where id=?";
		//sql.replace("table_name", TABLE_NAME);
		//获取事务对象 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//对问号进行替换 
			st.setString(1, bean.getHname());
			st.setInt(2, bean.getHpri());
			
			
			int row= st.executeUpdate(); //实际成功扫行的记录数
			
			if(row >0) {
				return true ;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	//查全部
	public List<Hotel> searchAll() {
		//1 获取数据库链接 
		Connection conn =DButil.getConnection();
		
		//准备sql命令
		
		String sql ="select *from hotel ";
		//sql.replace("table_name", TABLE_NAME);
		//获取事务对象 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//对问号进行替换 
			
			//执行sql命令
			ResultSet rs=st.executeQuery(); 
			
			List<Hotel> a1=new ArrayList<Hotel>();
			
			Hotel pack =null;
			if(rs.next()) {
				pack=new Hotel();
				pack.setHid(rs.getInt("hid"));
				pack.setHname(rs.getString("hname"));
				pack.setHpri(rs.getInt("hpri"));
				pack.setHdes(rs.getString("hdes"));
				pack.setHguide(rs.getString("hguide"));
				pack.setHreviews(rs.getString("hreviews"));
				pack.setHpic(rs.getString("hpic"));
				a1.add(pack);
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
	
	
	
	
	//用旅馆名查询
	public  Hotel login(String hname) {
		//1 获取数据库链接 
		Connection conn =DButil.getConnection();
		
		//准备sql命令
		
		String sql ="select *from hotel where hname=? ";
		//sql.replace("table_name", TABLE_NAME);
		//获取事务对象 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//对问号进行替换 
			
			
			st.setString(1, hname);	
			
			//执行sql命令
			ResultSet rs=st.executeQuery(); 
			
			Hotel pack =null;
			if(rs.next()) {
				pack=new Hotel();
				pack.setHid(rs.getInt("hid"));
				pack.setHname(rs.getString("hname"));
				pack.setHpri(rs.getInt("hpri"));
				pack.setHdes(rs.getString("hdes"));
				pack.setHguide(rs.getString("hguide"));
				pack.setHreviews(rs.getString("hreviews"));
				pack.setHpic(rs.getString("hpic"));
				
				
			}
			
			return pack;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//关闭数据库
			DButil.close(null,st,conn);
		}
		
			
		
		return null;
	}
	
}
