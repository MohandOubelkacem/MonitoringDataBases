

import java.io.DataOutputStream;

import java.io.IOException;
import java.net.Socket;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONException;
/** 
 * la classe permet d'exÃ©cuter la mÃ©thode indicateursGlobaux de AgentPostgres plusiers fois grÃ¢ce  au thread et l'envoyer grÃ¢ce 
 *  au socket
 * 
 * on peut utiliser la mÃªme classe pour les autre bases de donnÃ©es  il faut juste changer la mÃ©thode indicateursGlobaux  de AgentPostgres 
 *  par la base de donnÃ©es concernÃ© 
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
					s = new Socket("10.30.1.59",6660);// Créer socket:s avec l'adresse ip du destinataire et le port 6660
				
				 DataOutputStream 	os = new DataOutputStream(s.getOutputStream());
					String  pl=AgentPostgres.indicateursGlobaux(stmt1);// Appelle de la mÃ©thode indicateurGolaux de la classe AgentPostgres
					String p="indicateursGlobauxPostger";
					os.writeUTF(p);//Ã©crire sur le flux de sortie (socket s)
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

