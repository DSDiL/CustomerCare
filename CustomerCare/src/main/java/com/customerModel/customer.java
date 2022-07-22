package com.customerModel;

public class customer {
      
  	  private int id;
	  private String name;
	  private String email;
	  private String addr;
	  private String tel;
	  private String message;
	  private String completed;
	  
	public customer(int id, String name, String email, String addr, String tel, String message,String completed) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.addr = addr;
		this.tel = tel;
		this.message = message;
		this.completed = completed;
	}

 
	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getAddr() {
		return addr;
	}


	public String getTel() {
		return tel;
	}


	public String getMessage() {
		return message;
	}


	public String getCompleted() {
		return completed;
	}

	  
}
