package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
   public static  Connection get_connection() {
    	Connection connection=null;
    	try {
    	Class.forName("com.mysql.jdbc.Driver");
    	connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/cloudblood","root","chall004");
    	}
    	catch(Exception e) {
    		System.out.println(e);
    	}
    	return connection;
    }
}
