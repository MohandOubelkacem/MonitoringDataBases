

import java.io.IOException;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import org.json.JSONException;

/**
 * la classe permet d'exécuter les ThreadTimeMySql1 et ThreadTimeMySql2 
 */
public class TestTimeMySql {

	public static void main(String [] args)throws ClassNotFoundException, SQLException, UnknownHostException, IOException, JSONException, InterruptedException{
		 

		 AgentMySQL_D agent = new AgentMySQL_D();
		 
		 /**
		  * Charger la classe correspondant au driver MySql
		  */
		 Class.forName("com.mysql.jdbc.Driver");
		 
		 /**
		  * Connexion aÌ€ la base de donneÌes MySql
		  */
		 Connection connectionAvecMySql = agent.getConnection();
		 
		 /**
		  * reÌcupeÌration d'un Statement aÌ€ partir de la connexion
		  */
		 Statement stmt1 = connectionAvecMySql.createStatement( );
		 
		 Thread t1 = new Thread(new ThreadTimeMySql1(connectionAvecMySql,stmt1)); 
		 Thread t2 = new Thread(new ThreadTimeMySql2(connectionAvecMySql,stmt1)); 
		 
		 
		 t1.start();//Ã©xÃ©cuter thread t4
		 t2.start();//Ã©xÃ©cuter thread t5
}
}