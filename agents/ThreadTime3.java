package projetW1;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONException;
/** 
 * la classe permet d'exécuter la méthode Os de Json plusiers fois grâce  au thread et l'envoyer grâce 
 *  au socket
 * on peut utiliser la même classe pour les autre bases de données  

 */
public class ThreadTime3 implements Runnable {
	Connection connection;
	private Statement stmt1;
private Socket s;
	public ThreadTime3( Connection connection,Statement stmt1) {
		
		this.stmt1=stmt1;
		this.connection=connection;
	}
	@Override
	public void run() {
		
		// TODO Auto-generated method stub
		while(true) {
			 try {
					Thread.sleep(25000);
					 s = new Socket("10.30.1.59",6660);// Crée un socket avec l'adresse ip du destinataire et port 6660
			
				 DataOutputStream 	os = new DataOutputStream(s.getOutputStream());
					String  pl=OS1.Os();// Appelle de la méthode os  de la classe OS1
					String p="DonneeSystem";
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
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
     		
	

		

	}

}}