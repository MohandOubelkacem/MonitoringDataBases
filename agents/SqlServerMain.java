package l3w1_Projet;


import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


public class SqlServerMain {
	static Connection connectionAvecSql;
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
	public static void main(String[] args) throws IOException, ClassNotFoundException, JSONException, SQLException, InterruptedException {
		
		AgentSqlServer agent = new AgentSqlServer();
		
		try {
			
			connectionAvecSql = agent.getConnection();
			
			/*
			 * Les 2 objets qui permettent de construire et récuperer des requêtes de la BDD
			 * Création d'un objet statement (création et exécution de la requête SQL)
			 */
			ps = connectionAvecSql.createStatement();
			
			/*
			 * Objet rs contient le résultat de la requête SQL (récupère et affiche)
			 * Modifier UrlDB si besoin
			 */
			rs = ps.executeQuery("SELECT * from users");
			
			
			JSONObject obj = new JSONObject();
			JSONArray array = new JSONArray();
			FileWriter writeFile = new FileWriter("TableDetails.json");
			
			while (rs.next()){
				
				/*
				 * récuperer les tuples de la table Users 
				 * TEST
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
			SizeSqlServer size = new SizeSqlServer();
			
			//La taille totale d'une base 
			size.sizeofDataBase(ps);
			//La taille used and free space
			size.sizeofDataBase1(ps);
		
			
			
			//Objet Classe PerformanceIndicatorSqlServer
			PerformanceIndicatorSqlServer indicator = new PerformanceIndicatorSqlServer();
			
			//indicateurs de Performance
			indicator.performanceIndicator(ps);
			//indicateurs Globaux
			indicator.indicatorGlobal(ps);
			//les Clients
			indicator.client(ps);
			//indicateurs physical reads et logical reads
			indicator.indicator(ps);
			//indicateur pour la collision
			indicator.indicator2(ps);
			
	}
}
