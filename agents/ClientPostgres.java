
import java.io.IOException;


import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import org.json.JSONException;
/**
 * la classe permet  d'exécuter les ThreadTime, ThreadTime1,ThreadTime2
 * 
    
 */
public class ClientPostgres extends Thread {
	
	public static void main(String [] args)throws ClassNotFoundException, SQLException, UnknownHostException, IOException, JSONException, InterruptedException{
		Class.forName("org.postgresql.Driver"); //Charger la classe correspondant au driver postgres
		 Connection connection =AgentPostgres.getConnection();// Obtenir une connexion aÌ€ la base de donneÌes
		 
		
		
		 Statement stmt1 = connection.createStatement( );//récupération d'un Statement à partir de la connexion
	
		 Thread t1 = new Thread(new ThreadTime2(connection,stmt1));
			Thread t = new Thread(new TheardTime(connection,stmt1));
			Thread t2 = new Thread(new ThreadTime3(connection,stmt1));
			t.start();//exécuter le thread:t 
			t1.start();//exécuter le thread :t1 
			t2.start();//exÃécuter le thread:t2 
	
			
		

	
}}