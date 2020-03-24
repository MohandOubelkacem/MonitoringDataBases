
import java.io.IOException;
import java.net.ServerSocket;
/** 
 * la classe permet d'exéctuer plusieurs fois la classe serveurs qui permeettra de gérer plusieurs clients 
 */
public class MainServeur {
public static void main(String[] zero){
		// exécuter plusieurs clients 
		ServerSocket socket;
		try {
		socket = new ServerSocket(8080); //intialisàliser socket avec le port 8080
		Thread t = new Thread(new Serveur(socket));
		t.start();//exécuter le thread :t 
		
		
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
}
 