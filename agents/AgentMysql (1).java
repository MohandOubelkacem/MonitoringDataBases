


import java.io.FileWriter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;




public class AgentMysql extends Thread  {
	

		public static Connection getConnection( ) throws SQLException{
			String login="sys";
			String hostname="localhost:3306";
			String urlBd = "jdbc:mysql://"+hostname+"/"+login+"?useLegacyDatetimeCode=false&serverTimezone=UTC";
	
			String user="root", password="1408sS!!";
			return DriverManager.getConnection(urlBd,user,password );
			}
		
		public static void Create(Statement stmt1 ) throws SQLException{
			String request = "CREATE TABLE users" +
					" (nom VARCHAR(80), prenom VARCHAR(80),"+
					"email VARCHAR(80),password VARCHAR(80))";
					
					stmt1.executeUpdate(request);
					stmt1.executeUpdate(
							"INSERT INTO users(nom,prenom,email,password)"+
							"VALUES ('djouaher','cylia', 'cylia@gm.com','mlk' )");
			ResultSet rs= stmt1.executeQuery("SELECT nom,prenom FROM users");
			while (rs.next( )){
				Object obj1 = rs.getObject(1);
	          Object obj2 = rs.getObject(2);
	         System.out.println("("+obj1+","+obj2+")") ;
		}
		
		}
		
			public static void tailleDatabase(Statement stmt) throws SQLException, JSONException, IOException{	 
				ResultSet requete;
				 JSONObject json = new JSONObject();
				 FileWriter file= new FileWriter("/Applications/MAMP/htdocs/dbbrain1/Json/DonneeMysql.json");
				requete = stmt.executeQuery("SELECT \n" + 
				 		"    table_schema 'Database Name',\n" + 
				 		"    SUM(data_length + index_length)/ 1024 / 1024  'Size in Bytes in BM',\n" + 
				 		"    SUM(data_free)/ 1024 / 1024 'FREE SPACE'\n" + 
				 		"FROM information_schema.tables \n" + 
				 		"where table_schema='mysql';");
				
				
				 while ( requete.next() ) {
		           String Name = requete.getString(2);
		           Object taille = requete.getObject(3);
		           Object free= requete.getObject(3);
		           json.put("DatabaseName",Name);
		           json.put("Size",taille);
		           json.put("free space",free);
		          
		       
		       }
				 file.write(json.toString());
				 file.close();
			}
			public static void tailleTables(Statement stmt) throws SQLException{	 
				ResultSet query;
				
				query = stmt.executeQuery("SELECT \n" + 
				 		"    table_schema 'Database Name',\n" + 
				 		"    SUM(data_length + index_length) 'Size in Bytes',\n" + 
				 		"    ROUND(SUM(data_length + index_length) / 1024 / 1024, 2) 'Size in MiB'\n" + 
				 		"FROM information_schema.tables \n" + 
				 		"GROUP BY table_schema;");
				 System.out.println("");
				 while ( query.next() ) {
		           String Name = query.getString(1);
		           Object taille = query.getObject(2);
		           System.out.println(Name+"    taille"+taille);
		       }}
	
	public static String indicateursMysql(Statement stmt) throws SQLException, IOException, JSONException, InterruptedException {
		ResultSet requete;
		 sleep (4000);
		requete = stmt.executeQuery("SELECT DIGEST,DIGEST_TEXT,COUNT_STAR,SUM_TIMER_WAIT,SUM_LOCK_TIME,SUM_ROWS_SENT,FIRST_SEEN FROM performance_schema.events_statements_summary_by_digest ORDER BY FIRST_SEEN ASC LIMIT 42,52");
		 JSONObject ind = new JSONObject();
			JSONArray  tab=new JSONArray();
		 FileWriter fileInd = new FileWriter("/Applications/MAMP/htdocs/dbbrain1/json/IndicateursMysql.json");
		 while ( requete.next() ) {
			ind = new JSONObject();
	           String Name = requete.getString(1);
	           String obj1 = requete.getString(2);
	           String obj2 = requete.getString(3);
	           String obj3 = requete.getString(4);
	           String obj4= requete.getString(5);
	           String obj5= requete.getString(6);
	           String obj6= requete.getString(7);
	           
	           System.out.println(Name+"  "+obj1+" "+obj2+" "+obj3+""+obj4+""+obj5);
	           ind.put("DIGEST",Name);
	           ind.put("DIGEST_TEXT",obj1);
	           ind.put("COUNT_STAR",obj2);
	           ind.put("SUM_TIMER_WAIT",obj3);
	           ind.put("FIRST_SEEN",obj6);
	           ind.put("SUM_LOCK_TIME",obj4);
	           ind.put("SUM_ROWS_SENT",obj5);
	           tab.put(ind);
	          
	       }
		
			 fileInd.write(tab.toString());
				fileInd.close();
				return tab.toString();
	       }


	public static String indicateursGlobaux(Statement stmt) throws SQLException, IOException, JSONException {
		ResultSet requete;
		requete = stmt.executeQuery("SELECT * FROM performance_schema.global_status");
		 JSONObject ind = new JSONObject();
			JSONArray  tab=new JSONArray();
		// FileWriter fileInd = new FileWriter("/Applications/MAMP/htdocs/dbbrain1/json/IndicateursMysql.json");
		 while ( requete.next() ) {
			ind = new JSONObject();
	           String Name = requete.getString(1);
	           String obj1 = requete.getString(2);
	          // String obj2 = requete.getString(3);
	           //String obj3 = requete.getString(4);
	          // String obj4= requete.getString(5);
	         //  String obj5= requete.getString(6);
	           //String obj6= requete.getString(7);
	           
	           System.out.println(Name+"  "+obj1);
	        
	           tab.put(ind);
	          
	       }
		
			// fileInd.write(tab.toString());
			//	fileInd.close();
				return tab.toString();
	       }
	
//ENVOIE DES USERS
	public static String users(Statement stmt) throws SQLException, IOException, JSONException {
		ResultSet requete;
		requete = stmt.executeQuery("SELECT DISTINCT(user) FROM mysql.user");
		 
			JSONArray  tab=new JSONArray();
		 FileWriter fileInd = new FileWriter("/Applications/MAMP/htdocs/dbbrain1/json/users.json");
		 while ( requete.next() ) {
			 JSONObject ind = new JSONObject();
	           String Name = requete.getString(1);

	           ind.put("user",Name);
	           System.out.println(  Name);
	        tab.put(ind);
	          
	          
	       }
		
			 fileInd.write(tab.toString());
				fileInd.close();
				return tab.toString();
	       }

}
		