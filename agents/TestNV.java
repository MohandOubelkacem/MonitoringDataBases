
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class TestNV {

	public static void main (String [] args) throws SQLException, ClassNotFoundException
	{
		Class.forName("oracle.jdbc.OracleDriver"); 
        Connection con =DBConnection.setConnection(); 
        
        Probability p = new Probability(con);
        
		p.query_cpu_physic ();
		p.query_cpu_logic();
		p.query_cpu_coll();
		p.query_cpu_dispre();
        
		p.query_elapsed_physic ();
		p.query_elapsed_logic();
		p.query_elapsed_coll ();
		p.query_elapsed_dispre (); 
		
		p.query_waited_physic ();
		p.query_waited_logic();
		p.query_waited_coll ();
		p.query_waited_dispre ();
		
		
		
	}
}
