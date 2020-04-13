
import java.io.DataInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.net.*;
/** 
 * la classe permet de gérer plusieurs clients(utilisant différents base de données) et plusieurs données en méme temps et en temps réel 
 *  utilisant les sockets et les threads
  

 */
public class Serveur  implements Runnable{

	   private ServerSocket socketserver;
	   private Socket socket;
		public Serveur(ServerSocket s){
			socketserver = s;
		}
		
		public void run() {
           String line="";
	        try {
	        	while(true){
			     socket = socketserver.accept(); // Un client se connecte on l'accepte
			     SocketAddress n= socket.getRemoteSocketAddress();//récuperrer l'adresse IP du client connecté
			    
			     String client= n.toString();
			     String pl="";
			   
			     for(int i=0;i<client.length()-6;i++) {
			      pl =pl+client.charAt(i);
			  }
			   
	                  System.out.println("Le client  "+pl+ " est connecté !");
	               
//	                 if(pl.equals("/10.30.16.234))//vérifie l'addresse IP du client1 Sofiane
//	                 {  //Ã  changer le chemin si nous utilisons un autre ordinateur et l'adresse ip du nouveau client 
//	                	
//	                	 
//	                     
//	                      DataInputStream   is = new DataInputStream(socket.getInputStream()); 
//	                      line = is.readUTF();
//	                      //si les données reçu sont les  indicateursPerformanceSqlserver on les met dans le chemin Préciser ci-dessous
//	                       if(line.equals("indicateursPerformanceSqlserver")) {
//	                	  FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain/json/queries_sqlserver.json");
//	                	  System.out.println("The file cread !");
//	                		line = is.readUTF();
//	                		fileInd.write(line);
//	                		fileInd.flush();
//	    					fileInd.close();
//	                		System.out.println(line);
//	                		}
//	                       if(line.equals("indicateursGlobauxSqlserver")) {
//	                    	   //si les donnÃ©es reÃ§u sont les  indicateursPerformanceGlobauxSqlserver on les met dans le chemin PrÃ©ciser ci-dessous
//	                    	   FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/Physical_Logical_SqlServer.json");
//		                		line = is.readUTF();
//		                		fileInd.write(line);
//		                		fileInd.flush();
//		    					fileInd.close();
//		                		System.out.println(line);
//		                		}
//	                       if(line.equals("indicateursPerformanceMysql")) {
//	 	                	  FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/erformanceMysql.json");
//	 	                		line = is.readUTF();
//	 	                		fileInd.write(line);
//	 	                		fileInd.flush();
//	 	    					fileInd.close();
//	 	                		System.out.println(line);}
//	 	                       if(line.equals("indicateursGlobauxMysql")) {
//	 	                    	  //si les donnÃ©es reÃ§u sont les  indicateursPerformanceGlobauxMysql on les met dans le chemin PrÃ©ciser ci-dessous
//	 	                    	   FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/hysical_Logical_ReadsMysql3.json");
//	 		                		line = is.readUTF();
//	 		                		fileInd.write(line);
//	 		                		fileInd.flush();
//	 		    					fileInd.close();
//	 		                		System.out.println(line);}
//                            if(line.equals("DonneeSystem")) {
//                            	//si les donnÃ©es reÃ§u sont les donnnÃ©e Systeme on les met dans le chemin PrÃ©ciser ci-dessous
//	                    	   FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/DonneeOpeSys.json");
//		                		line = is.readUTF();
//		                		fileInd.write(line);
//		                		fileInd.flush();
//		    					fileInd.close();
//		                		System.out.println(line);}
//	                     
//	                		
	                 }
//	                  if(pl.equals("/10.30.19.49"))//vérifie l'addresse ip client2 cylia
//		                 {//Ã  changer le chemin si nous utilisons un autre ordinateur et l'adresse ip du nouveau client 
//	                	
//		            
//		                  DataInputStream   is = new DataInputStream(socket.getInputStream()); 
//		           
//		                       line = is.readUTF();
//		                     //si les donnéees reçu sont les  indicateursPerformanceSqlPostger  on les met dans le chemin Préciser ci-dessous
//		                       if(line.equals("indicateursPerformancePostger")) {
//		                	  FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/Indicateurs.json");
//		                		line = is.readUTF();
//		                		fileInd.write(line);
//		                		fileInd.flush();
//		    					fileInd.close();
//		                		System.out.println(line);}
//		                       if(line.equals("indicateursGlobauxPostger")) {
//		                    	   //si les donnÃ©es reÃ§u sont les  indicateursPerformanceGlobaux on les met dans le chemin PrÃ©ciser ci-dessous
//		                    	   FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/IndicateursG.json");
//			                		line = is.readUTF();
//			                		fileInd.write(line);
//			                		fileInd.flush();
//			    					fileInd.close();
//			                		System.out.println(line);}
//		                       if(line.equals("indicateursPerformanceMysql")) {
//				                	  FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/IndicateursMysql.json");
//				                		line = is.readUTF();
//				                		fileInd.write(line);
//				                		fileInd.flush();
//				    					fileInd.close();
//				                		System.out.println(line);}
//				                     
//                                 if(line.equals("DonneeSystem")) {
//                                	//si les donnÃ©es reÃ§u sont les donnnÃ©e Systeme on les met dans le chemin PrÃ©ciser ci-dessous
//		                    	   FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/crre.json");
//			                		line = is.readUTF();
//			                		fileInd.write(line);
//			                		fileInd.flush();
//			    					fileInd.close();
//			                		System.out.println(line);}
//		                      
//		              
//	                  }
//	                  if(pl.equals("/10.30.6.183"))//vÃ©rifie l'addresse ip client3 liza 
//		                 {//Ã  changer le chemin si nous utilisons un autre ordinateur et l'adresse ip du nouveau client 
//	                	 
//		                  
//		              
//		                  DataInputStream   is = new DataInputStream(socket.getInputStream()); 
//		                  line = is.readUTF();
//		                //si les donnÃ©es reÃ§u sont les  indicateursPerformance on les met dans le chemin PrÃ©ciser ci-dessous
//	                       if(line.equals("indicateursPerformance")) {
//	                	  FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/oracleDB_all_queries.json");
//	                		line = is.readUTF();
//	                		fileInd.write(line);
//	                		fileInd.flush();
//	    					fileInd.close();
//	                		System.out.println(line);}
//	                       if(line.equals("indicateursGlobaux")) {
//	                    	   //si les donnÃ©es reÃ§u sont les  indicateursPerformanceGlobaux on les met dans le chemin PrÃ©ciser ci-dessous
//	                    	   FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/oracleDB_evaluate.json");
//		                		line = is.readUTF();
//		                		fileInd.write(line);
//		                		fileInd.flush();
//		    					fileInd.close();
//		                		System.out.println(line);}
//                            if(line.equals("DonneeSystem")) {
//                            	//si les données reçeu sont les donnnée Systeme on les met dans le chemin Préciser ci-dessous
//	                    	   FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/Os_performances.json");
//		                		line = is.readUTF();
//		                		fileInd.write(line);
//		                		fileInd.flush();
//		    					fileInd.close();
//		                		System.out.println(line);}}
//		                 
//	                  
//	                  if(pl.equals("/l'adresse de nondraos"))//vÃ©rifie l'addresse ip client4 nondraos
//		                 {//Ã  changer le chemin si nous utilisons  un autre ordinateur et l'adresse ip du nouveau client 
//	                	 
//		                  
//		                
//		                  DataInputStream   is = new DataInputStream(socket.getInputStream()); 
//		                  line = is.readUTF();
//		                //si les donnÃ©es reÃ§u sont les  indicateursPerformanceSql on les met dans le chemin PrÃ©ciser ci-dessous
//	                       if(line.equals("indicateursPerformance")) {
//	                	  FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/IndicateursLiza.json");
//	                		line = is.readUTF();
//	                		fileInd.write(line);
//	                		fileInd.flush();
//	    					fileInd.close();
//	                		System.out.println(line);}
//	                       if(line.equals("indicateursGlobaux")) {
//	                    	 //si les donnÃ©es reÃ§u sont les  indicateursPerformanceGlobaux on les met dans le chemin PrÃ©ciser ci-dessous
//	                    	   FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/IndicateursGobaux.json");
//		                		line = is.readUTF();
//		                		fileInd.write(line);
//		                		fileInd.flush();
//		    					fileInd.close();
//		                		System.out.println(line);}
//                            if(line.equals("DonneeSystem")) {
//                            	//si les données reçue sont les donnnées Systeme on les met dans le chemin Préciser ci-dessous
//	                    	   FileWriter fileInd = new FileWriter("/opt/lampp/htdocs/dbbrain1/json/DonneeSystem.json");
//		                		line = is.readUTF();
//		                		fileInd.write(line);
//		                		fileInd.flush();
//		    					fileInd.close();
//		                		System.out.println(line);}
//		               		                  }
	        	
	        	

	        } catch (IOException e) {
				e.printStackTrace();
			}
		}

	}
