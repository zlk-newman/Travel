package com.qst.model;



public class Message {
	private int id;
	
	private String Name; 
	private int Price; 
	private String Phonenumber; 
	private String Email; 
	private int day;
	private int Ticket;  
	
	private String Pname;
    private String  Hname;
    
    
	public Message() {
		
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", Name=" + Name + ", Price=" + Price + ", Phonenumber=" + Phonenumber + ", Email="
				+ Email + ", day=" + day + ", Ticket=" + Ticket + ", Pname=" + Pname + ", Hname=" + Hname + "]";
	}
	public Message(int id, String name, int price, String phonenumber, String email, int day, int ticket, String pname,
			String hname) {
		super();
		this.id = id;
		Name = name;
		Price = price;
		Phonenumber = phonenumber;
		Email = email;
		this.day = day;
		Ticket = ticket;
		Pname = pname;
		Hname = hname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public String getPhonenumber() {
		return Phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		Phonenumber = phonenumber;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getTicket() {
		return Ticket;
	}
	public void setTicket(int ticket) {
		Ticket = ticket;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public String getHname() {
		return Hname;
	}
	public void setHname(String hname) {
		Hname = hname;
	}
    
    
	
	
	
	

}
