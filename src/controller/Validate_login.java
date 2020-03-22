package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;


import connection.Database;

public class Validate_login {


	public boolean validate(String Email,String Password) throws SQLException {
		boolean var=false;
		try{
		Connection connection=Database.get_connection();
		PreparedStatement ps=connection.prepareStatement("select Email,Password from cloudblood.details where Email=? AND Password=?");
		ps.setString(1, Email);
		ps.setString(2,Password);
		ResultSet rs=ps.executeQuery();
        rs.absolute(1);
		String s=rs.getString(1);
	    String t=rs.getString(2);
		if(s.equals(Email) && t.equals(Password)) {
		  var=true;
		
		}
		}
		catch(Exception e){
			System.out.println("invalid username/password");
		}
		
		
	return var;
	}

}
