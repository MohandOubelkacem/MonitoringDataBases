
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SizeMySql extends Thread{

	static Connection connectionAvecMySql;
	
	public SizeMySql() {};
	
	/**
	 * REQUETE : La taille totale de toutes les bases présentes dans MySql 
	 */
	private static final String Size = "SELECT \r\n" + 
			"    table_schema 'Database Name',\r\n" + 
			"    SUM(data_length + index_length) 'Size in Bytes',\r\n" + 
			"    ROUND(SUM(data_length + index_length) / 1024 / 1024, 2) 'Size in MiB'\r\n" + 
			"FROM information_schema.tables \r\n" + 
			"GROUP BY table_schema;";

	/**
	 * récupérer la taille totale de toutes les bases dans MySql 
	 * @param stmt, pour exécuter une instruction SQL
	 * @return la taille totale de toutes les bases
	 * @throws JSONException
	 * @throws InterruptedException
	 * @throws SQLException
	 * @throws IOException
	 */
	public String sizeofDataBase(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
		
		/**
		 * Connection  
		 */
		AgentMySQL_D agent = new AgentMySQL_D();
		connectionAvecMySql = agent.getConnection();
		
		/**
		 * Objet rs va contenir le résultat de la requête SQL 
		 */
		ResultSet rs;
	    
	    sleep(4000);
	    
	    stmt = connectionAvecMySql.createStatement();

		rs = stmt.executeQuery(Size);
		
		JSONObject obj = new JSONObject();
		JSONArray array = new JSONArray();
		
			try {
				
				FileWriter writeFile = null;
				
				writeFile = new FileWriter("SizeInMiB.json");
				
				while (rs.next()){
					
					System.out.println("Database Name : "+rs.getString("Database Name")+" \t");
					System.out.println("Size in Bytes : "+rs.getString("Size in Bytes")+" \t");
					System.out.println("Size in MiB : "+rs.getString("Size in MiB")+" \t");
					System.out.println();
					
					obj = new JSONObject();
					obj.put("Database Name : ",rs.getString("Database Name"));
					obj.put("Size in Bytes : ",rs.getString("Size in Bytes"));
					obj.put("Size in MiB : ",rs.getString("Size in MiB"));
					array.put(obj);
					
				}
				
					writeFile.write(array.toString());
					writeFile.flush();
					writeFile.close();
					System.out.println(array.toString());
						
		
			}catch(SQLException ex) {
				ex.printStackTrace();
			}finally{
				if (rs != null) {
			        try {
			            rs.close();
			        } catch (SQLException ex1) {
			        }
			    }
			    if (stmt != null) {
			        try {
			            stmt.close();
			        } catch (SQLException ex2) {
			        }
			    }
			    if (connectionAvecMySql != null) {
			        try {
			        	connectionAvecMySql.close();
			        } catch (SQLException ex3) {
			        }
			    }
			}
				
				return array.toString();
				//return obj.toString(); méthode doit retourner un String 
	}
	
	 
		/**
		 * REQUETE : La taille used and free space dans MySql 
		 */
		private static final String Size1 = "SELECT table_schema \"Data Base Name\", \r\n" + 
				"sum( data_length + index_length ) / 1024 / 1024 \"Data Base Size in MB\", \r\n" + 
				"sum( data_free )/ 1024 / 1024 \"Free Space in MB\" \r\n" + 
				"FROM information_schema.TABLES \r\n" + 
				"where table_schema = \"mysql\";";
	
		/**
		 * récupérer la taille used and free space dans MySql 
		 * @param stmt, pour exécuter une instruction SQL
		 * @return la taille used and free space
		 * @throws JSONException
		 * @throws InterruptedException
		 * @throws SQLException
		 * @throws IOException
		 */
		public String sizeofDataBase1(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
			
			AgentMySQL_D agent = new AgentMySQL_D();
			connectionAvecMySql = agent.getConnection();
			
			ResultSet rs;
		    
		    sleep(4000);
		    
		    stmt = connectionAvecMySql.createStatement();

			rs = stmt.executeQuery(Size1);
			
			JSONObject obj1 = new JSONObject();
			JSONArray array1 = new JSONArray();
			
				try {
					
					FileWriter writeFile1 = null;
					
					writeFile1 = new FileWriter("MySQL_Data-D.json");
					
					while (rs.next()){
						
						System.out.println("Data Base Name : "+rs.getString("Data Base Name")+" \t");
						System.out.println("Data Base Size in MB : "+rs.getString("Data Base Size in MB")+" \t");
						System.out.println("Free Space in MB : "+rs.getString("Free Space in MB")+" \t");
						System.out.println();
						
						obj1 = new JSONObject();
						obj1.put("Data Base Name : ",rs.getString("Data Base Name"));
						obj1.put("Data Base Size in MB : ",rs.getString("Data Base Size in MB"));
						obj1.put("Free Space in MB : ",rs.getString("Free Space in MB"));
						array1.put(obj1);
					}
					
						writeFile1.write(array1.toString());
						writeFile1.flush();
						writeFile1.close();
						System.out.println(array1.toString());
						
				}catch(SQLException ex) {
					ex.printStackTrace();
				}finally{
					if (rs != null) {
				        try {
				            rs.close();
				        } catch (SQLException ex1) {
				        }
				    }
				    if (stmt != null) {
				        try {
				            stmt.close();
				        } catch (SQLException ex2) {
				        }
				    }
				    if (connectionAvecMySql != null) {
				        try {
				        	connectionAvecMySql.close();
				        } catch (SQLException ex3) {
				        }
				    }
				}
					
					return array1.toString();
		}
		
		
		
		/**
		 * REQUETE : La taille de toutes les tables dune base dans MySql 
		 */
		private	static final String Size2 = "SELECT table_name AS \"Tables\", \r\n" + 
						"round(((data_length + index_length) / 1024 / 1024), 2) \"Size in MB\" \r\n" + 
						"FROM information_schema.TABLES \r\n" + 
						"WHERE table_schema = \"mysql\";";
				 
		/**
		 * récupérer La taille de toutes les tables dune base dans MySql 
		 * @param stmt, pour exécuter une instruction SQL
		 * @return La taille de toutes les tables dune base
		 * @throws JSONException
		 * @throws InterruptedException
		 * @throws SQLException
		 * @throws IOException
		 */
		public String sizeofTables(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
			
			AgentMySQL_D agent = new AgentMySQL_D();
			connectionAvecMySql = agent.getConnection();
			
			ResultSet rs;
		    
		    sleep(4000);
		    
		    stmt = connectionAvecMySql.createStatement();

			rs = stmt.executeQuery(Size2);
			
			JSONObject obj2 = new JSONObject();
			JSONArray array2 = new JSONArray();
			
					try {
						
						FileWriter writeFile2 = null;
						
						writeFile2 = new FileWriter("MySQL_tablesSize-D.json");
						
						while (rs.next()){
							
							System.out.println("Tables : "+rs.getString("Tables")+" \t");
							System.out.println("Size in MB : "+rs.getString("Size in MB")+" \t");
							System.out.println();
							
							obj2 = new JSONObject();
							obj2.put("Tables : ",rs.getString("Tables"));
							obj2.put("Size in MB : ",rs.getString("Size in MB"));
							System.out.println();
							array2.put(obj2);
						}

							writeFile2.write(array2.toString());
							writeFile2.flush();
							writeFile2.close();
							System.out.println(array2.toString());
								
					}catch(SQLException ex) {
						ex.printStackTrace();
					}finally{
						if (rs != null) {
					        try {
					            rs.close();
					        } catch (SQLException ex1) {
					        }
					    }
					    if (stmt != null) {
					        try {
					            stmt.close();
					        } catch (SQLException ex2) {
					        }
					    }
					    if (connectionAvecMySql != null) {
					        try {
					        	connectionAvecMySql.close();
					        } catch (SQLException ex3) {
					        }
					    }
					}
						
						return array2.toString();
				}
		
		
		/**
		 * REQUETE : La taille d'une table dune base dans MySql 
		 */
		private	static final String Size3 = "SELECT table_name AS \"Tables\", \r\n" + 
								"round(((data_length + index_length) / 1024 / 1024), 2) \"Size in MB\" \r\n" + 
								"FROM information_schema.TABLES \r\n" + 
								"WHERE table_schema = \"registration\" AND table_name = \"users\";";

	
		/**
		 * récupérer La taille d'une table dune base dans MySql 
		 * @param stmt, pour exécuter une instruction SQL
		 * @return La taille d'une table users de la base registration
		 * @throws JSONException
		 * @throws InterruptedException
		 * @throws SQLException
		 * @throws IOException
		 */
		public String sizeofTable1(Statement stmt) throws JSONException, InterruptedException, SQLException, IOException{
			
			AgentMySQL_D agent = new AgentMySQL_D();
			connectionAvecMySql = agent.getConnection();
			
			ResultSet rs;
		    
		    sleep(4000);
		    
		    stmt = connectionAvecMySql.createStatement();

			rs = stmt.executeQuery(Size3);
			
			JSONObject obj3 = new JSONObject();
			JSONArray array3 = new JSONArray();
			
					try {
							
						FileWriter writeFile3 = null;
						
						writeFile3 = new FileWriter("MySQL_tableSize-D.json");
								
						while (rs.next()){
									
							System.out.println("Tables : "+rs.getString("Tables")+" \t");
							System.out.println("Size in MB : "+rs.getString("Size in MB")+" \t");
							System.out.println();
									
							obj3 = new JSONObject();
							obj3.put("Tables : ",rs.getString("Tables"));
							obj3.put("Size in MB : ",rs.getString("Size in MB"));
							System.out.println();
							array3.put(obj3);
						}
							
							writeFile3.write(array3.toString());
							writeFile3.flush();
							writeFile3.close();
							System.out.println(array3.toString());
						
			}catch(SQLException ex) {
				ex.printStackTrace();
			}finally{
				if (rs != null) {
						try {
							 rs.close();
							} catch (SQLException ex1) {
							    }
							}
				if (stmt != null) {
						try {
							 stmt.close();
							 } catch (SQLException ex2) {
							     }
							 }
				if (connectionAvecMySql != null) {
						try {
							 connectionAvecMySql.close();
							 } catch (SQLException ex3) {
							     }
							 }
							}
				return array3.toString();
			}
}