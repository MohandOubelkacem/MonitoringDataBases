package l3w1_Projet;

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
		  * Connexion à la base de données MySql
		  */
		 Connection connectionAvecMySql = agent.getConnection();
		 
		 /**
		  * récupération d'un Statement à partir de la connexion
		  */
		 Statement stmt1 = connectionAvecMySql.createStatement( );
		 
		 Thread t1 = new Thread(new ThreadTimeMySql1(connectionAvecMySql,stmt1)); 
		 Thread t2 = new Thread(new ThreadTimeMySql2(connectionAvecMySql,stmt1)); 
		 
		 
		 t1.start();//éxécuter thread t4
		 t2.start();//éxécuter thread t5
}
}
