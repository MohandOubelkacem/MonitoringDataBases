package projetW1;

import java.io.IOException;
import java.net.ServerSocket;
/** 
 * la classe permet d'exécuter plusieurs fois la classe serveurs qui permeettra de gérer plusieurs clients 
 */
public class MainServeur {
public static void main(String[] zero){
		// exécuter plusieurs clients 
		ServerSocket socket;
		try {
		socket = new ServerSocket(6660); //intialisé socket avec le port 6660
		Thread t = new Thread(new Serveur(socket));
		t.start();//exécuter le thread :t 
		
		
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
}

