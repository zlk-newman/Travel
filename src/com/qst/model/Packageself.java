package com.qst.model;

public class Packageself {
	private int Pid;
	private String Pname;
	private int Ppri;
	private int Pday;
	private String Ppla;  
	private String Pdes;
	private String Ppic; //±£´æÍ¼Æ¬Â·¾¶
	
	
	
	
	
	@Override
	public String toString() {
		return "Package [Pid=" + Pid + ", Pname=" + Pname + ", Ppri=" + Ppri + ", Pday=" + Pday + ", Ppla=" + Ppla
				+ ", Pdes=" + Pdes + ", Ppic=" + Ppic + "]";
	}



	public Packageself() {
		
	}



	public Packageself(int pid, String pname, int ppri, int pday, String ppla, String pdes, String ppic) {
		super();
		Pid = pid;
		Pname = pname;
		Ppri = ppri;
		Pday = pday;
		Ppla = ppla;
		Pdes = pdes;
		Ppic = ppic;
	}



	public int getPid() {
		return Pid;
	}



	public void setPid(int pid) {
		Pid = pid;
	}



	public String getPname() {
		return Pname;
	}



	public void setPname(String pname) {
		Pname = pname;
	}



	public int getPpri() {
		return Ppri;
	}



	public void setPpri(int ppri) {
		Ppri = ppri;
	}



	public int getPday() {
		return Pday;
	}



	public void setPday(int pday) {
		Pday = pday;
	}



	public String getPpla() {
		return Ppla;
	}



	public void setPpla(String ppla) {
		Ppla = ppla;
	}



	public String getPdes() {
		return Pdes;
	}



	public void setPdes(String pdes) {
		Pdes = pdes;
	}



	public String getPpic() {
		return Ppic;
	}



	public void setPpic(String ppic) {
		Ppic = ppic;
	}
	
	
	

}
