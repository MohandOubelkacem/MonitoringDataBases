package projetW1;

import java.io.DataOutputStream;

import java.io.IOException;
import java.net.Socket;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONException;
/** 
 * la classe permet d'exécuter la méthode indicateursGlobaux de AgentPostgres plusiers fois grâce  au thread et l'envoyer grâce 
 *  au socket
 * 
 * on peut utiliser la même classe pour les autre bases de données  il faut juste changer la méthode indicateursGlobaux  de AgentPostgres 
 *  par la base de données concerné 
 */
public class ThreadTime2 implements Runnable {
	Connection connection;
	private Statement stmt1;
 private Socket s;
	public ThreadTime2( Connection connection,Statement stmt1) {
		
		this.stmt1=stmt1;
		this.connection=connection;
	}
	@Override
	public void run() {
		
		// TODO Auto-generated method stub
		while(true) {
			 try {
					Thread.sleep(10000);
					s = new Socket("10.30.1.59",6660);// Crée socket:s avec l'adresse ip du destinataire et le port 6660
				
				 DataOutputStream 	os = new DataOutputStream(s.getOutputStream());
					String  pl=AgentPostgres.indicateursGlobaux(stmt1);// Appelle de la méthode indicateurGolaux de la classe AgentPostgres
					String p="indicateursGlobauxPostger";
					os.writeUTF(p);//écrire sur le flux de sortie (socket s)
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

}}


