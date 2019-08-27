package com.qst.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.qst.db.DButil;
import com.qst.model.Packageself;

//���ײͱ����ɾ�Ĳ� 

public class Pdao {
	//��final��ؼ������εı������� ��java�г���ȫ����д
	
	
	
	public List<Packageself> searchAll() {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		
		//׼��sql����
		
		String sql ="select * from package ";
		
		//��ȡ������� 
		PreparedStatement  st=null;
		ResultSet rs=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			
			//ִ��sql����
			 rs=st.executeQuery(); 
			
			List<Packageself> a1=new ArrayList<Packageself>();
			
			Packageself pack =null;
			while(rs.next()) {
				pack=new Packageself();
				pack.setPid(rs.getInt("pid"));
				pack.setPname(rs.getString("pname"));
				pack.setPpri(rs.getInt("ppri"));
				pack.setPpla(rs.getString("ppla"));
				pack.setPday(rs.getInt("pday"));
				pack.setPdes(rs.getString("pdes"));
				pack.setPpic(rs.getString("ppic"));
				
				a1.add(pack);
			}
			return a1;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//�ر����ݿ�
			DButil.close(rs,st,conn);
		}
		
			
		
		return null;
	}
	
	
	
	
	
	
	public List<Packageself> searchAll2() {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		
		//׼��sql����
		
		String sql ="select *from package ";
		//sql=sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			
			//ִ��sql����
			ResultSet rs=st.executeQuery(); 
			
			List<Packageself> a1=new ArrayList<Packageself>();
			
			Packageself pack =null;
			while(rs.next()) {
				pack=new Packageself();
				pack.setPid(rs.getInt("pid"));
				pack.setPname(rs.getString("pname"));
				pack.setPpri(rs.getInt("ppri"));
				pack.setPpla(rs.getString("ppla"));
				pack.setPday(rs.getInt("pday"));
				pack.setPdes(rs.getString("pdes"));
				pack.setPpic(rs.getString("ppic"));
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
	
	
	
	
	//�õص��ѯ
	public  Packageself login(String pname) {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		
		//׼��sql����
		
		String sql ="select * from package where pname=? ";
		//sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			
			
			st.setString(1, pname);	
			//st.setInt(2, pday);
			
			//ִ��sql����
			ResultSet rs=st.executeQuery(); 
			
			Packageself pack =null;
			if(rs.next()) {
				pack=new Packageself();
				pack.setPid(rs.getInt("pid"));
				pack.setPname(rs.getString("pname"));
				pack.setPpri(rs.getInt("ppri"));
				pack.setPpla(rs.getString("ppla"));
				pack.setPday(rs.getInt("pday"));
				pack.setPdes(rs.getString("pdes"));
				pack.setPpic(rs.getString("ppic"));
				
				
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
	

	//�õص��ѯ
	public  Packageself login2(String p) {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		
		//׼��sql����
		
		String sql ="select * from package where ppla=? ";
		//sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			
			
			st.setString(1, p);	
			//st.setInt(2, pday);
			
			//ִ��sql����
			ResultSet rs=st.executeQuery(); 
			
			Packageself pack =null;
			if(rs.next()) {
				pack=new Packageself();
				pack.setPid(rs.getInt("pid"));
				pack.setPname(rs.getString("pname"));
				pack.setPpri(rs.getInt("ppri"));
				pack.setPpla(rs.getString("ppla"));
				pack.setPday(rs.getInt("pday"));
				pack.setPdes(rs.getString("pdes"));
				pack.setPpic(rs.getString("ppic"));
				
				
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
	
	
	
	public boolean insert(Packageself pa) {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		//׼��sql����
		String sql ="insert into package(pid,pname,ppri,pday,ppla,pdes,ppic) value(?,?,?,?,?,?,?)";
		//sql.replace("table_name", TABLE_NAME);
		//��ȡ�������
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			st.setInt(1, pa.getPid());
			st.setString(2, pa.getPname());
			st.setInt(3, pa.getPpri());
			st.setInt(4, pa.getPday());
			st.setString(5, pa.getPpla());
			st.setString(6, pa.getPpla());
			st.setString(7, pa.getPpic());
			
			
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
	public boolean delete(int  id) {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		//׼��sql����
		//String sql="delete from package where pid=? ";//
		String sql="DELETE FROM package WHERE pid=?";
		
		//sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			
			//���ʺŽ����滻 
			st.setInt(1, id);
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
	
/**
 * �޸��ƶ�id�ļ�¼ֵ 
 * @param id
 * @param bean
 * @return 
 */
	
	
	public boolean update(int id, Packageself pa) {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		//׼��sql����
		String sql ="update package set pname=?,ppri=?,pday=? where pid=?";
		

		//sql.replace("table_name", TABLE_NAME);
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			
			st.setString(1, pa.getPname());
			st.setInt(2, pa.getPpri());
			st.setInt(3, pa.getPday());
			
			st.setInt(4, id);
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

	/**
	 * 
	 * @param id
	 * @param pa ��ɾ��
	 * @return
	 */
	 
	public boolean idu(String sql, Object... args) {
		//1 ��ȡ���ݿ����� 
		Connection conn =DButil.getConnection();
		
		//׼��sql����
		
		//String sql ="update  table_name set pname=?,ppri=?,pday=?, where id=?";
		
		//��ȡ������� 
		PreparedStatement  st=null;
		
		try {
			st=conn.prepareStatement(sql);
			//���ʺŽ����滻 
			if(args !=null) {
				
					for(int i=0;i<args.length;i++) {
						st.setObject(i+1, args[i]);
					}
				
			}
				
			
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
	
	public boolean insert2(Packageself pa) {
		String sql ="insert into package(pid,pname,ppri,pday,ppla,pdes,ppic) value(?,?,?,?,?,?,?)";
		
		return idu(sql,pa.getPid(),pa.getPname(),pa.getPpri(),pa.getPday(),pa.getPpla(),pa.getPdes(),pa.getPpic());
	}
	public boolean delete2(int  id) {
		//1 ��ȡ���ݿ����� 
		
		//׼��sql����
		String sql="DELETE FROM package WHERE pid=?";
		idu(sql,id);
		return true;
				}
	public boolean update2(int id, Packageself pa) {
		//1 ��ȡ���ݿ����� 
		
		//׼��sql����    �ܸ���pname=?,ppri=?,pday=?, where id
		String sql ="update package set pname=?,ppri=?,pday=? where pid=?";
		return idu(sql,pa.getPname(),pa.getPpri(),pa.getPday(),id);
	}
}
