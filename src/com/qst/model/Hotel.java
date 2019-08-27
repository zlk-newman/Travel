package com.qst.model;

public class Hotel {

	private int Hid;  
	private String Hname;
	private int Hpri;    //�۸�
	private String Hdes;  //���� 
	private String Hguide;  //��������
	private String Hreviews;  //���� 
	private String Hpic; //����ͼƬ·��
	
	
	public Hotel() {
	}
	
	@Override
	public String toString() {
		return "Hotel [Hid=" + Hid + ", Hname=" + Hname  + ", Hpri=" + Hpri + ", Hdes="
				+ Hdes + ", Hguide=" + Hguide + ", Hreviews=" + Hreviews
				+ ", Hpic=" + Hpic + "]";
	}

	
	public Hotel(int hid, String hname,  int hpri, String hdes, String hguide, 
			 String hreviews, String hpic) {
		super();
		Hid = hid;
		Hname = hname;
		Hpri = hpri;
		Hdes = hdes;
		Hguide = hguide;
		Hreviews = hreviews;
		Hpic = hpic;
	}

	public int getHid() {
		return Hid;
	}
	public void setHid(int hid) {
		Hid = hid;
	}
	public String getHname() {
		return Hname;
	}
	public void setHname(String hname) {
		Hname = hname;
	}
	
	public int getHpri() {
		return Hpri;
	}
	public void setHpri(int hpri) {
		Hpri = hpri;
	}
	public String getHdes() {
		return Hdes;
	}
	public void setHdes(String hdes) {
		Hdes = hdes;
	}
	public String getHguide() {
		return Hguide;
	}
	public void setHguide(String hguide) {
		Hguide = hguide;
	}

	public String getHreviews() {
		return Hreviews;
	}
	public void setHreviews(String hreviews) {
		Hreviews = hreviews;
	}
	public String getHpic() {
		return Hpic;
	}
	public void setHpic(String hpic) {
		Hpic = hpic;
	}
	
	



	
	
}
