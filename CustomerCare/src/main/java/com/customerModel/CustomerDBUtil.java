package com.customerModel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.utilities.DBConnect;

public class CustomerDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs   = null;
	
		public static boolean insertcustomer(String name,String email,String addr,String tel,String message) {
			
			  boolean isSuccess = false;
			  String completed = "Pending";
			 
			   try {
				   con = DBConnect.getConnection(); 
				   stmt= con.createStatement();
				   
				   String sql="insert into customer values(0,'"+name+"','"+email+"','"+addr+"','"+tel+"','"+message+"','"+completed+"')";
				   int rs = stmt.executeUpdate(sql);
				   
				   if(rs > 0) {
					   isSuccess = true;
				   }else {
					   isSuccess = false;
				   }
				  
			   }
			   catch(Exception e) {
				   e.printStackTrace();
			   }
			  	
			  return isSuccess;
		}
		
	    //delete
		 public static boolean deleteCustomer(String id) {
		    	
			   boolean isSuccess = false;
		    
			   int convId = Integer.parseInt(id);
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "delete from customer where id='"+convId+"'";
		    		int r = stmt.executeUpdate(sql);
		    		
		    		if (r > 0) {
		    			isSuccess = true;
		    		}
		    		else {
		    			isSuccess = false;
		    		}
		    		
		    	}
		    	catch (Exception e) {
		    		e.printStackTrace();
		    	}
		    	
		    	return isSuccess;
		    }
		
		//update
		 public static boolean updateCustomer(String id, String completed) {
			 
		    int convertedID = Integer.parseInt(id);
			 
			 boolean isSuccess = false;
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update customer set completed='"+completed+"' where id='"+convertedID+"'";
		    		int rs = stmt.executeUpdate(sql);
		    		
		    		if(rs > 0) {
		    			isSuccess = true;
		    		}
		    		else {
		    			isSuccess = false;
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}
		    	
		    	return isSuccess;
		    }
		    
		 public static List<customer> getCutomerDetails(String id) {
		    	
		    	int convertedID = Integer.parseInt(id);
		    	
		    	ArrayList<customer> pat = new ArrayList<>();
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "select * from customer where id='"+convertedID+"'";
		    		rs = stmt.executeQuery(sql);
		    		
		    		while(rs.next()) {
		    			int id1 = rs.getInt(1);
		    			String name = rs.getString(2);
		    			String email = rs.getString(3);
		    			String addr = rs.getString(4);
		    			String tel = rs.getString(5);
		    			String message = rs.getString(6);
		    			String completed = rs.getString(7);
		    			
		    			customer c = new customer(id1,name,email,addr,tel,message,completed);
		    			pat.add(c);
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}	
		    	return pat;	
		    }
		 
		    
		public static ArrayList<customer> getAllInventory() {
				
			ArrayList<customer> customer = new ArrayList<customer>();
				
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from customercare.customer order by id desc";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
				
					int id = rs.getInt(1);
	    			String Name = rs.getString(2);
	    			String Email = rs.getString(3);
	    			String addr = rs.getString(4);
	    			String tel = rs.getString(5);
	    			String message = rs.getString(6);
	    			String completed = rs.getString(7);
					
					customer c= new customer(id,Name,Email,addr,tel,message,completed);
					
					customer.add(c);
					}
				}catch(Exception e) {
				e.printStackTrace();
				}
			return customer;
		 }


		public static List<customer> getID(String name, String email) {
			
			ArrayList<customer> customer = new ArrayList<customer>();
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from customercare.customer where name='"+name+"' and email='"+email+"' order by id desc limit 1;";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
				
					int id = rs.getInt(1);
	    			String Name = rs.getString(2);
	    			String Email = rs.getString(3);
	    			String addr = rs.getString(4);
	    			String tel = rs.getString(5);
	    			String message = rs.getString(6);
	    			String completed = rs.getString(7);
					
					customer c= new customer(id,Name,Email,addr,tel,message,completed);
					
					customer.add(c);
					}
				}catch(Exception e) {
				e.printStackTrace();
				}
			return customer;
		}
}
		
