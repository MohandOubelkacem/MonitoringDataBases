package l3w1_Projet;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import org.json.JSONException;

/**
 * la classe permet d'exécuter la méthode indicator() de la classe PerformanceIndicatorMySql plusiers fois grâce au thread 
 * et l'envoyer grâce au socket
 */
public class ThreadTimeMySql2 implements Runnable{
	
	Connection connection;
	private Statement stmt1;
	private Socket s; 
	
	public ThreadTimeMySql2(Connection connection,Statement stmt1) {
		
		this.stmt1=stmt1;
		this.connection=connection;
	}
	@Override
	public void run() {
		
		// TODO Auto-generated method stub
		while(true) {
			 try {
					Thread.sleep(20000);
					/**
					 * Créer un socket avec l'adresse ip du destinataire
					 */
					s = new Socket("10.30.1.59",6660);
					 
				    DataOutputStream os = new DataOutputStream(s.getOutputStream());
				    
				    /**
					 * Appelle la méthode indicator() de la classe PerformanceIndicatorMySql
					 */
					String  pl=PerformanceIndicatorMySql.indicator(stmt1);
					String p="indicateursGlobauxMysql";
					System.out.println(p);
					os.writeUTF(p);
				    os.writeUTF(pl);
				    os.flush();
					
					
			} catch (IOException e1 ) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	}

}
}
