package projetW1;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


import org.json.JSONException;
/** 
 * la classe permet d'exécuter la méthode indicateursPerformances de AgentPostgres plusiers fois grâce  au thread et l'envoyer grâce 
 *  au socket
 *  on peut utiliser la même classe pour les autre bases de données  il faut juste changer la méthode indicateursPerformances de AgentPostgres 
 *  par la base de données concerné  

 */
public class TheardTime implements Runnable {
	Connection connection;
	private Statement stmt1;
	private Socket s; 
	public TheardTime(Connection connection,Statement stmt1) {
		
		this.stmt1=stmt1;
		this.connection=connection;
	}
	
	@Override
	public void run() {
		
		// TODO Auto-generated method stub
		while(true) {
			 try {
					Thread.sleep(20000);
					 s = new Socket("10.30.1.59",6660);// Crée un socket avec l'adresse ip du destinataire et port 6660
		
				 DataOutputStream 	os = new DataOutputStream(s.getOutputStream());
					String  pl=AgentPostgres.indicateursPerformances(stmt1);// Appelle de la méthode indicateursPerformance de la classe AgentMysql
					String p="indicateursPerformancePostger";
					System.out.println(p);
					os.writeUTF(p);
				 os.writeUTF(pl);//écrire sur le flux de sortie (socket s)
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

}}
