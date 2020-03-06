package l3w1_Projet;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import org.json.JSONException;

/**
 * la classe permet d'ex�cuter la m�thode performanceIndicator() de la classe PerformanceIndicatorSqlServer plusiers fois gr�ce au thread 
 * et l'envoyer gr�ce au socket
 */
public class ThreadTimeSqlServer1 implements Runnable{
	
	Connection connection;
	private Statement stmt1;
	private Socket s; 
	public ThreadTimeSqlServer1(Connection connection,Statement stmt1) {
		
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
					 * Cr�er un socket avec l'adresse ip du destinataire
					 */
					s = new Socket("10.30.1.59",6660);
					
					
					DataOutputStream os = new DataOutputStream(s.getOutputStream());
					
					/**
					 * Appelle la m�thode performanceIndicator() de la classe PerformanceIndicatorSqlServer
					 */
					String  pl=PerformanceIndicatorSqlServer.performanceIndicator(stmt1);
					String p="indicateursPerformanceSqlserver";
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
