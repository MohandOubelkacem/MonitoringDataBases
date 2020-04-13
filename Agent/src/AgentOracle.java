import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

public class AgentOracle {
	public static void main (String [] args) {
		
		Connection connection = null;
		try {
			
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:","SYSTEM","systeme");
			Statement stmt = null;
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("Select *from student");
			ResultSetMetaData rsmd = rs.getMetaData(); 
			
			int colmunNumber=rsmd.getColumnCount();
			
			int rowsubmit =0;
			while (rs.next() ) {
				rowsubmit++;
				
				for (int i= 1; i<=colmunNumber; i++) {
				
					System.out.print(""+rs.getString(i));
				}
				
				System.out.println();
			}
			
			System.out.println(rowsubmit);
			
	}catch (SQLException  e) {
		System.out.println("Connection Failed! check out the out put console");
		e.printStackTrace();
		return; 
		
	}
		
		
	}

	
}
	