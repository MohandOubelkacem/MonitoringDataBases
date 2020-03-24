
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MySQLMain {
	static Connection connectionAvecMySql;
	static Statement ps;
	static ResultSet rs;
	
	/**
	 * La fonction principale qui invoquera éventuellement les autres fonctions
	 * @param args, le nom d'un tableau
	 * @throws IOException
	 * @throws JSONException
	 * @throws InterruptedException
	 * @throws SQLException
	 */
	public static void main(String[] args) throws IOException, JSONException, InterruptedException, SQLException {
		/**
		 * Connection
		 */
		AgentMySQL_D agent = new AgentMySQL_D();
			
			try {
				
				connectionAvecMySql = agent.getConnection();
				/*
				 * Les 2 objets qui permettent de construire et récuperer des requêtes de la BDD
				 * Création d'un objet statement (création et exécution de la requête SQL)
				 */
				ps = connectionAvecMySql.createStatement();
				
				/*
				 * Objet rs contient le résultat de la requete SQL (récupère et affiche)
				 * Modifier UrlDB (base de données Registration)
				 */
				rs = ps.executeQuery("SELECT * from users");
				
				JSONObject obj = new JSONObject();
				JSONArray array = new JSONArray();
				FileWriter writeFile = new FileWriter("TableDetails1.json");
				
				while (rs.next()){
					/*
					 * récuperer les tuples de la table Users 
					 */
					System.out.print(rs.getInt("id_users")+" \t");
					System.out.print(rs.getString("username")+"\t");
					System.out.print(rs.getString("email")+"\t");
					System.out.print(rs.getString("password")+"\t");
					System.out.println("");	
					
					obj = new JSONObject();
					obj.put("id_users : ",rs.getString("id_users"));
					obj.put("username : ",rs.getString("username"));
					obj.put("email: ",rs.getString("email"));
					obj.put("password : ",rs.getString("password"));
					array.put(obj);
				
				}	
				
				writeFile.write(obj.toString());
				writeFile.write(array.toString());
				writeFile.flush();
				writeFile.close();
				System.out.println(array.toString());
	
			}catch(SQLException ex) {
				ex.printStackTrace();
				System.out.print("Error");
			}
			
			
			//Objet Classe SizeMySql 
			SizeMySql size = new SizeMySql();
			
			//la taille totale de toutes les bases
			size.sizeofDataBase(ps);
			//la taille used and free space
			size.sizeofDataBase1(ps);
			//La taille de toutes les tables dune base
			size.sizeofTables(ps);
			//La taille d'une table users de la base registration
			size.sizeofTable1(ps);
			
			//Objet Classe PerformanceIndicatorMySql
			PerformanceIndicatorMySql indicator= new PerformanceIndicatorMySql();
			
			//indicateurs globaux mysql
			indicator.indicatorGlobalMySql(ps);
			//indicateurs globaux selectionnés
			indicator.indicatorGlobalMySqlSelected(ps);
			//indicateurs de Performance niveau Queries  
			indicator.performanceIndicator(ps);
			//indicateurs physical reads et logical reads 
 			indicator.indicator(ps);
			//indicateur pour la collision
			indicator.indicator2(ps);
			//user de la base de données
			indicator.users(ps);
			
			
		}
}