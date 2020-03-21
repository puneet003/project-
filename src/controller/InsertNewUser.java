package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

import connection.Database;

public class InsertNewUser {

public void insertvalues(String FirstName,String LastName,String Mobile,String Email,String Password) {
	
	Connection connection=Database.get_connection();
	PreparedStatement ps=null;
	try {
		String query="insert into cloudblood.details(FirstName,LastName,Mobile,Email,Password) values(?,?,?,?,?)";
		ps=connection.prepareStatement(query);
		ps.setString(1,FirstName);
	    ps.setString(2,LastName);
		ps.setString(3,Mobile);
		ps.setString(4,Email);
		ps.setString(5,Password);
		ps.executeUpdate();
	}
	catch(Exception e) {
		System.out.println(e);
	}
}

}
