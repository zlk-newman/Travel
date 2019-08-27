package com.qst.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.qst.db.DButil;
import com.qst.model.Hotel;


//���ײͱ����ɾ�Ĳ� 

public class HotelDao {
	//��final��ؼ������εı������� ��java�г���ȫ����д
	//private final String TABLE_NAME="hotel"; 
	
	public boolean insert(Hotel bean) {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		//׼��sql����
		String sql ="insert into hotel(hid,hname,hpri,hdes,hguide,hreviews,hpic)value(?,?,?,?,?,?,?)";
		//sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			st.setInt(1, bean.getHid());
			st.setString(2,bean.getHname());
			st.setInt(3, bean.getHpri());
			st.setString(4,bean.getHdes());
			st.setString(5, bean.getHguide());
			st.setString(6, bean.getHreviews());
			st.setString(7,bean.getHpic());
			//ִ��sql����
			//st.executeQuery();
			int row= st.executeUpdate(); //ʵ�ʳɹ�ɨ�еļ�¼��
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
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		//׼��sql����
		String sql="delete form hotel where hid=?";
		//String sql ="insert into table_name(id,email,username,pwd,regtime,lastindate)value(?,?,?,?,?)";
		
		//sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			
			//���ʺŽ����滻 
			st.setInt(1, hid);
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
			DButil.close(null,null,null);
		}
		
		return false;
	}
	
/**
 * �޸��ƶ�id�ļ�¼ֵ 
 * @param id
 * @param bean
 * @return 
 */
	
	
	public boolean update(int id, Hotel bean) {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		//׼��sql����
		String sql ="update  hotel set hname=?,hpri=?,hdes=?,hguide=?,hreviews=?,hpic=? where id=?";
		//sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			st.setString(1, bean.getHname());
			st.setInt(2, bean.getHpri());
			
			
			int row= st.executeUpdate(); //ʵ�ʳɹ�ɨ�еļ�¼��
			
			if(row >0) {
				return true ;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	//��ȫ��
	public List<Hotel> searchAll() {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		
		//׼��sql����
		
		String sql ="select *from hotel ";
		//sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			
			//ִ��sql����
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
			//�ر����ݿ�
			DButil.close(null,st,conn);
		}
		
			
		
		return null;
	}
	
	
	
	
	//���ù�����ѯ
	public  Hotel login(String hname) {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		
		//׼��sql����
		
		String sql ="select *from hotel where hname=? ";
		//sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			
			
			st.setString(1, hname);	
			
			//ִ��sql����
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
			//�ر����ݿ�
			DButil.close(null,st,conn);
		}
		
			
		
		return null;
	}
	
}
