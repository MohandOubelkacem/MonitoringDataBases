
import java.io.IOException;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import org.json.JSONException;

/**
 * la classe permet d'exÃ©cuter les ThreadTimeSqlServer1, ThreadTimeSqlServer2 et ThreadTimeSqlServer3 
 */
public class TestTimeSqlServer {
	
	public static void main(String [] args)throws ClassNotFoundException, SQLException, UnknownHostException, IOException, JSONException, InterruptedException{
		 
		 AgentSqlServer agent = new AgentSqlServer();
		 
		 /**
		  * Charger la classe correspondant au driver Sql Server
		  */
		 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		 
		 /**
		  * Connexion aÌ€ la base de donneÌes Sql Server 
		  */
		 Connection connectionAvecSql = agent.getConnection();
		 
		 /**
		  * reÌcupeÌration d'un Statement aÌ€ partir de la connexion
		  */
		 Statement stmt1 = connectionAvecSql.createStatement( );
		 
		 Thread t1 = new Thread(new ThreadTimeSqlServer1(connectionAvecSql,stmt1));
		 Thread t2 = new Thread(new ThreadTimeSqlServer2(connectionAvecSql,stmt1));
		 Thread t3 = new Thread(new ThreadTimeSqlServer3(connectionAvecSql,stmt1));
		 
		 t1.start();
		 t2.start();
		 t3.start();
}
}