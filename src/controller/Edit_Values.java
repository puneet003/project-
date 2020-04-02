package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;


import connection.Database;

public class Edit_Values {


	
	public void editvalues(String bloodgroup,String country,String state,String recoveryemail,String gender,String dob,String timestamp,String email) {
		
		Connection connection=Database.get_connection();
		PreparedStatement ps=null;
		try {
			String query="UPDATE `cloudblood`.`details` SET `BloodGroup` = ?, `Country` = ?, `State` = ?, `RecoveyEmail` = ?, `Gender` = ?, `DOB` = ?, `TimeStamp` = ? WHERE (`Email` = ?)";

			ps=connection.prepareStatement(query);
			ps.setString(1,bloodgroup);
		    ps.setString(2,country);
			ps.setString(3,state);
			ps.setString(4,recoveryemail);
			ps.setString(5,gender);
			ps.setString(6,dob);
			ps.setString(7,timestamp);
			ps.setString(8,email);
			ps.executeUpdate();
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
}
