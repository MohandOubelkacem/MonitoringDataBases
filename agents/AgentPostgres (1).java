

import java.io.DataOutputStream;
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

public class AgentPostgres extends Thread  {

	public static Connection getConnection( ) throws SQLException{
		//String nomBase="login";
		String hostname="localhost:8081";
		String urlBd = "jdbc:postgresql://"+hostname+"/";
		String user="postgres", password="root";
		return DriverManager.getConnection(urlBd,user,password );
		}
	//taille des bases de données 
	public static ResultSet recuperationDonnee(Statement stmt ) throws SQLException, ClassNotFoundException, IOException, JSONException{
		ResultSet rs;
		JSONObject obj1 = new JSONObject(); 
		FileWriter fichier = new FileWriter("/Applications/MAMP/htdocs/dbbrain1/Json/DonneePostres.json");
		 rs = stmt.executeQuery("SELECT pg_database.datname, pg_size_pretty(pg_database_size(pg_database.datname)) AS size FROM pg_database");
		 System.out.println("nom de la base  taille ");
		 System.out.println();
		 while ( rs.next() ) {
            String Name = rs.getString(1);
            String taille = rs.getString(2);
            obj1.put(Name,taille);
        }
		
	 fichier.write(obj1.toString());
			fichier.close();
			 return rs;
	}
	public static ResultSet recuperationDonneeJ(Statement stmt ) throws SQLException, ClassNotFoundException{
		ResultSet rs;
		
		 rs = stmt.executeQuery("SELECT pg_database.datname, pg_size_pretty(pg_database_size(pg_database.datname)) AS size FROM pg_database");
		 
		 return rs;
	}
		 public static void creation(Statement stmt ) throws SQLException, ClassNotFoundException{
				
				 String request = "CREATE TABLE user" +
					" (nom VARCHAR(80),prenom VARCHAR(80),"+
					"email VARCHAR(80),mondepasse INTEGER not NULL)";
					stmt.executeUpdate(request);
				 
		        }
		 
	public static void tailleTable(Statement stmt ) throws SQLException, ClassNotFoundException{	 
		ResultSet rs;
		
		 rs = stmt.executeQuery("select pg_size_pretty(pg_table_size('question'))");
		 
		 System.out.println("nom de la table  taille");
		 while ( rs.next() ) {
           String taille = rs.getString(1);
           
           System.out.println(" question "+taille);
       }}
	public static void tailleDataBase(Statement stmt ) throws SQLException, ClassNotFoundException{	 
		ResultSet rs;
		
		 rs = stmt.executeQuery("SELECT pg_size_pretty( pg_database_size('login'))");
		 System.out.println("");
		 while ( rs.next() ) {
           String Name = rs.getString(1);
          
           System.out.println("taille dataBase login "+""+Name);
       }}
	
		 public static void tables(Statement stmt) throws SQLException {
			 ResultSet rs1;
			 rs1 = stmt.executeQuery("SELECT table_name FROM information_schema.tables \n");
				
				
			 while ( rs1.next() ) {
	           String Name = rs1.getString(1);
	          
	           System.out.println(Name+" ");
	       }}
		 
		 
		 //Les tables et les index les plus volumineux sont repérés 
			 public static void tableIndex(Statement stmt,DataOutputStream dout) throws SQLException, JSONException, IOException {
				 ResultSet rs1;
				 JSONObject obj = new JSONObject();
				
				 
				FileWriter file = new FileWriter("/Applications/MAMP/htdocs/dbbrain1/json/DonneeBase.json");
				 rs1 = stmt.executeQuery("SELECT *" + 
				 		"FROM pg_class\n" + 
				 		"ORDER BY relpages DESC");
					
					
				 while ( rs1.next() ) {
		           String Name = rs1.getString(1);
		           String taille = rs1.getString(2);
		           obj.put(Name,taille);
		           System.out.println(Name+" "+taille);
		       }
				 dout.writeUTF(obj.toString());
					dout.flush();
					dout.close();
					file.write(obj.toString());
					file.close();
			 }
					//taux d'occupation disque d'une table :
			 public static void utilisationDisqueTable(Statement stmt) throws SQLException {
					 ResultSet rs1;
					
					 rs1 = stmt.executeQuery(" SELECT pg_relation_filepath (oid), relpages FROM pg_class WHERE relname = 'question'");
						
						
					 while ( rs1.next() ) {
			           String Name = rs1.getString(1);
			           String taille = rs1.getString(2);
			           System.out.println(Name+" "+taille);
			       }
		 }
			 public static void indicateursPerformance(Statement stmt) throws SQLException {
				 ResultSet result;
				 //"EXPLAIN ANALYZE SELECT * FROM pg_stat_statements"
				// stmt.executeUpdate("CREATE EXTENSION pg_stat_statements");
				// "SELECT *, total_time / number AS avg_time  FROM (SELECT INTERVAL '00:02:28' AS total_time, 10 AS number) a"
				 result = stmt.executeQuery(
						 "select * from pg_test_timing"
				 		 );
					
					
				 while ( result.next() ) {
		           String Name = result.getString(1);
		        // String obj1 = result.getString(2);
		         /*  String obj2  = result.getString(3);
		           String obj3 = result.getString(4);
		           String obj4 = result.getString(4);
		           String obj5  = result.getString(5);
		           String obj6 = result.getString(6);*/
		           System.out.println(Name+"   ");
		           
		       }}
			 
			
				
			 //récupération des indicateurs de performance et les mettre dans un fichier json 
			 public static String indicateursPerformances(Statement stmt) throws SQLException, JSONException, IOException, InterruptedException {
				 ResultSet rs1;
				
				// stmt.executeUpdate("CREATE EXTENSION pg_stat_statements");
				 
				 sleep (4000);
				 rs1 = stmt.executeQuery(" SELECT queryid ,query q,local_blks_read, total_time, rows,userid,temp_blks_read, calls,shared_blks_read,100.0 * shared_blks_hit /\n" + 
				 		"                nullif (shared_blks_hit + shared_blks_read, 0) AS hit_percent FROM pg_stat_statements ORDER BY calls DESC LIMIT 8");
				 JSONObject obj = new JSONObject();
				 JSONArray tabJson = new JSONArray();
				 FileWriter fileInd = new FileWriter("/Applications/MAMP/htdocs/dbbrain1/json/Indicateurs.json");
				 while ( rs1.next() ) {
					 obj = new JSONObject();
		           String queryid = rs1.getString(1);
		           String query= rs1.getString(2);
		           String local_blks_read = rs1.getString(3);
		           String total_time = rs1.getString(4);
		           String rows = rs1.getString(5);
		           String temp_blks_read=rs1.getString(6);
		           String userid=rs1.getString(7);
		           String calls=rs1.getString(8);
		           String shared_blks_read=rs1.getString(9);
		           String hit=rs1.getString(10);
		           System.out.println( queryid+" "+query+""+calls+"  "+total_time+"  "+local_blks_read+"  "+rows+""+temp_blks_read+""+userid+""+hit);
		           obj.put("queryid",queryid);
		           obj.put("query",query);
		           obj.put("calls",calls);
		           obj.put("total_time",total_time);
		           obj.put("shared_blks_read",shared_blks_read);
		           obj.put("temp_blks_read",temp_blks_read);
		           obj.put("local_blks_read",local_blks_read);
		           obj.put("userid",userid);
		           obj.put("rows",rows);
		           obj.put("hit",hit);
		           tabJson.put(obj);
		           
		           
		       }
				 fileInd.write(tabJson.toString());
					fileInd.flush();
					fileInd.close();
					
				return tabJson.toString();		
						
				 }
			 
			 
			 public static String indicateursGlobaux(Statement stmt) throws SQLException, JSONException, IOException, InterruptedException {
				 
				 ResultSet rs1;
			
					// stmt.executeUpdate("CREATE EXTENSION pg_stat_statements");
					 sleep (4000);
			      rs1 = stmt.executeQuery(" SELECT blks_hit,blks_read,blk_read_time,blk_write_time,stats_reset FROM pg_stat_database");
					
					 JSONObject obj = new JSONObject();
					 JSONArray tabJson = new JSONArray();
					 FileWriter fileInd = new FileWriter("/Applications/MAMP/htdocs/dbbrain1/json/IndicateursG.json");
					 while ( rs1.next() ) {
						 obj = new JSONObject();
			           String blks_hit = rs1.getString(1);
			           String blks_read= rs1.getString(2);
			           
			          String blk_read_time = rs1.getString(3);
			           String blk_write_time = rs1.getString(4);
			         
			           String stats_reset=rs1.getString(5);
			           //String impasses=rs1.getString(6);
			          
			           obj.put("blks_hit",blks_hit);
			           obj.put("blks_read",blks_read);
			           obj.put("blk_read_time",blk_read_time);
			           obj.put("blk_write_time",blk_write_time);
			         
			           obj.put("stats_reset",stats_reset);
			           
			           tabJson.put(obj);
			           
			           
			       }
					
					
					 fileInd.write(tabJson.toString());
						fileInd.flush();
						fileInd.close();
						System.out.println(tabJson.toString());
					return tabJson.toString();		
				 
	}
			 
			 
			 public static void colllision(Statement stmt) throws SQLException, IOException, JSONException  {
			
				 
				 ResultSet	 rs = stmt.executeQuery(" SELECT database FROM pg_locks ");
				 JSONArray tabJson = new JSONArray();
				 FileWriter file = new FileWriter("/Applications/MAMP/htdocs/dbbrain1/json/Collision.json");
				 while ( rs.next() ) {
					 JSONObject obj = new JSONObject();
					 String collision = rs.getString(1);
					 obj.put("collision",collision);
					 tabJson.put(obj.toString());
					
			        }
				 file.write(tabJson.toString());
					file.flush();
					file.close();
				 }
			
				
}
