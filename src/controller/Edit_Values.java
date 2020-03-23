package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

import connection.Database;

public class Edit_Values {

public void editvalues(String var,String value,String email) {
	
	Connection connection=Database.get_connection();
	PreparedStatement ps=null;
	try {
		String query="UPDATE cloudblood.details SET "+var+"=? WHERE Email=?";
		ps=connection.prepareStatement(query);
		ps.setString(1,value);
	    ps.setString(2,email);
	    ps.executeUpdate();
	}catch(Exception e) {
		
	}
}
}
